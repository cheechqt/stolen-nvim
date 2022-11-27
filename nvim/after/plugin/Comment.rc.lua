local status, comment = pcall(require, "Comment")
if (not status) then return end

local api = require('Comment.api')
local esc = vim.api.nvim_replace_termcodes(
  '<ESC>', true, false, true
)


comment.setup {

}

vim.keymap.set('n', '<Space>/', api.toggle.linewise.current)
vim.keymap.set('x', '<Space>/', function()
  vim.api.nvim_feedkeys(esc, 'nx', false)
  api.toggle.linewise(vim.fn.visualmode())
end)
