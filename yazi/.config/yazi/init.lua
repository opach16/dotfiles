-- file size with thousand separators, with precise bytes, no weird units
function ya.readable_size(size) 
	local s = tostring(math.floor(size))
	return s:reverse():gsub("(%d%d%d)", "%1 "):reverse():gsub("^ ", "")
end

-- if file timestamp from today, HH:MM:SS
-- if older than this year, use a ISO-8601 inspired timestamp (T is replaced by a space for easy reading)
-- to save space, as permitted by the standard, the year can be skipped with a dash
-- also, if within the last week, explicit the days: yesterday or the day of the week
local weekdays = { "Sun.", "Mon.", "Tue.", "Wed.", "Thu.", "Fri.", "Sat." }

function Linemode:btime()
	local time = self._file.cha.btime
	if not time or time == 0 then
		return ""
	end

	time = math.floor(time)

	local t = os.date("*t", time)
	local now = os.date("*t")

	if t.year == now.year then
		local diff = now.yday - t.yday

		if diff == 0 then
			return os.date("%H:%M:%S", time)
		elseif diff == 1 then
			return "yest. " .. os.date("%H:%M:%S", time)
		elseif diff >= 2 and diff <= 6 then
			return weekdays[t.wday] .. " " .. os.date("%H:%M:%S", time)
		else
			return os.date("--%m-%d %H:%M:%S", time)
		end
	else
		return os.date("%Y-%m-%d %H:%M:%S", time)
	end
end
