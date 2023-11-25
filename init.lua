require('base')
require('highlight')
require('maps')
require('plugin')

local has = function(x)
	return vim.fn.has(x) == 1
end

local is_mac = has "macunix"
local is_windows = has "win32"

if is_mac then
	require('macos')
end
if is_windows then
	require('windows')
end

-- Turn off auto comment
vim.cmd [[autocmd Filetype * set formatoptions-=ro]]
