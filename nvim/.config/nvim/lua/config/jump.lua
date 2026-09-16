local NS = vim.api.nvim_create_namespace("jump")
local BASE_LABELS = vim.fn.split("fdsaghjklrewqtyuiopvcxzbnmFDSAGHJKLREWQTYUIOPVCXZBNM0123456789;,.-='", "\\zs")

local function jump(mode_key)
    return function()
        local win = vim.api.nvim_get_current_win()
        local buf = vim.api.nvim_win_get_buf(win)
        local cur_pos = vim.api.nvim_win_get_cursor(win)
        local cur_row, cur_col = cur_pos[1], cur_pos[2]

        local info = vim.fn.getwininfo(win)[1]
        local top = info.topline
        local lines = vim.api.nvim_buf_get_lines(buf, top - 1, info.botline, true)

        local ch = vim.fn.getcharstr()
        if ch == "\27" or ch == "" then
            return
        end

        local pat = ch:lower()
        local raw_matches = {}
        local is_backward = (mode_key == "F" or mode_key == "T")

        -- 1. Find matches acoording the cursor position
        for idx, line in ipairs(lines) do
            local lnum = top + idx - 1
            local col = 1
            local haystack = line:lower()
            local line_len = #line

            while true do
                local s, e = haystack:find(pat, col, true)
                if not s then break end
                local match_col = s - 1

                local jump_col = match_col
                if mode_key == "t" then
                    jump_col = math.max(0, match_col - 1)
                elseif mode_key == "T" then
                    jump_col = math.min(math.max(0, line_len - 1), match_col + 1)
                end

                -- Ignore character below the cursor
                local is_current = (lnum == cur_row) and (jump_col == cur_col or match_col == cur_col)

                if not is_current then
                    table.insert(raw_matches, {
                        lnum = lnum,
                        row = lnum - 1,
                        col = match_col,
                        jump_col = jump_col,
                        len = e - s + 1,
                    })
                end
                col = e + 1
            end
        end

        if #raw_matches == 0 then
            return
        end

        -- 2. Sort acoording search direcction
        table.sort(raw_matches, function(a, b)
            local a_fwd = (a.lnum > cur_row) or (a.lnum == cur_row and a.col > cur_col)
            local b_fwd = (b.lnum > cur_row) or (b.lnum == cur_row and b.col > cur_col)

            if not is_backward then
                if a_fwd and not b_fwd then return true end
                if not a_fwd and b_fwd then return false end
                if a_fwd and b_fwd then
                    if a.lnum ~= b.lnum then return a.lnum < b.lnum end
                    return a.col < b.col
                else
                    if a.lnum ~= b.lnum then return a.lnum > b.lnum end
                    return a.col > b.col
                end
            else
                if not a_fwd and b_fwd then return true end
                if a_fwd and not b_fwd then return false end
                if not a_fwd and not b_fwd then
                    if a.lnum ~= b.lnum then return a.lnum > b.lnum end
                    return a.col > b.col
                else
                    if a.lnum ~= b.lnum then return a.lnum < b.lnum end
                    return a.col < b.col
                end
            end
        end)

        -- 3. Prepare labels
        local labels = {}
        for _, l in ipairs(BASE_LABELS) do
            if l ~= ch then
                table.insert(labels, l)
            end
        end

        local targets = {}

        -- 4. Display labels
        for i, m in ipairs(raw_matches) do
            local label = (i == 1) and ch or labels[i - 1]

            if label then
                targets[label] = { m.lnum, m.jump_col }

                vim.api.nvim_buf_set_extmark(buf, NS, m.row, m.col, {
                    end_col = m.col + m.len,
                    hl_group = "Search",
                    priority = 200,
                })

                vim.api.nvim_buf_set_extmark(buf, NS, m.row, m.col, {
                    virt_text = { { label, "IncSearch" } },
                    virt_text_pos = "overlay",
                    priority = 201,
                })
            end
        end

        vim.cmd.redraw()
        local input = vim.fn.getcharstr()
        vim.api.nvim_buf_clear_namespace(buf, NS, 0, -1)
        vim.cmd.redraw()

        if targets[input] then
            vim.cmd("normal! m'")
            vim.api.nvim_win_set_cursor(win, targets[input])
        end
    end
end

for _, key in ipairs({ "f", "t", "F", "T" }) do
    vim.keymap.set({ "n", "x", "o" }, key, jump(key), { desc = "Jump " .. key })
end
