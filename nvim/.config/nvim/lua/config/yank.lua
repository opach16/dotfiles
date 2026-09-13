-- yank history
local M = {}
local HISTORY_KEY = "YANKY_HISTORY"
local MAX_HISTORY = 100

local function get_history()
	return vim.g[HISTORY_KEY] or {}
end

local function set_history(h)
	vim.g[HISTORY_KEY] = h
end

local function push(regcontents, regtype)
	if not regcontents or regcontents == "" then
		return
	end
	local h = vim.deepcopy(get_history())
	if h[1] and h[1].regcontents == regcontents and h[1].regtype == regtype then
		return
	end
	table.insert(h, 1, { regcontents = regcontents, regtype = regtype })
	if #h > MAX_HISTORY then
		h[MAX_HISTORY + 1] = nil
	end
	set_history(h)
end

vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("YankHistory", { clear = true }),
	callback = function()
		local event = vim.v.event
		if event.operator == "y" or event.regname == "+" or event.regname == "*" then
			local reg = event.regname ~= "" and event.regname or '"'
			push(vim.fn.getreg(reg), vim.fn.getregtype(reg))
		end
	end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
	callback = function()
		vim.hl.hl_op({ higroup = "IncSearch", timeout = 150 })
	end,
})

function M.pick()
	local history = get_history()

	require("config.picker").open(history, {
		title = "Yank History",
		skip_single = false,
		format = function(entry, i)
			local text = entry.regcontents or ""
			local first_line = vim.split(text, "\n")[1] or ""
			local regtype = entry.regtype or "v"
			local type_label = regtype == "V" and "line" or regtype == "\22" and "block" or "char"
			return ("[%d] %s (%s)"):format(i, first_line, type_label)
		end,
		preview = function(entry, ctx)
			ctx.set_lines(vim.split(entry.regcontents or "", "\n"))
		end,
		on_confirm = function(entry)
			vim.fn.setreg('"', entry.regcontents, entry.regtype)
			if vim.tbl_contains(vim.opt.clipboard:get(), "unnamedplus") then
				vim.fn.setreg("+", entry.regcontents, entry.regtype)
			end
			vim.schedule(function()
				vim.cmd("normal! p")
			end)
		end,
	})
end

vim.keymap.set({ "n", "x" }, "<leader>y", M.pick, { desc = "Yank history" })

return M
