local status, comment = pcall(require, "Comment")
if (not status) then return end

local api = require('Comment.api')
local esc = vim.api.nvim_replace_termcodes(
  '<ESC>', true, false, true
)


comment.setup {
  pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()
}

vim.keymap.set('n', '<Space>/', api.toggle.linewise.current)
vim.keymap.set('x', '<Space>/', function()
  vim.api.nvim_feedkeys(esc, 'nx', false)
  api.toggle.linewise(vim.fn.visualmode())
end)
