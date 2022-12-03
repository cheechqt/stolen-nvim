local status, n = pcall(require, "neosolarized")
if (not status) then return end

n.setup({
  comment_italics = true,
})

local cb = require('colorbuddy.init')
local Color = cb.Color
local colors = cb.colors
local Group = cb.Group
local groups = cb.groups
local styles = cb.styles

-- syntax group is in place of the cursor
-- :let s = synID(line('.'), col('.'), 1) | echo synIDattr(s, 'name') . ' -> ' . synIDattr(synIDtrans(s), 'name')

Color.new('black', '#000000')
Color.new('red', '#C0412F')
Color.new('blue', '#268BAF')
Color.new('base03', '#002b36')
Color.new('base02', '#073642')
Color.new('base01', '#586e75')
Color.new('base00', '#657b83')
Color.new('base0', '#83A5B8')
Color.new('base1', '#93a1a1')
Color.new('base2', '#eee8d5')
Color.new('base3', '#fdf6e3')
Group.new('CursorLine', colors.none, colors.base03, styles.NONE, colors.base1)
Group.new('CursorLineNr', colors.yellow, colors.black, styles.NONE, colors.base1)
Group.new('Visual', colors.none, colors.base03, styles.reverse)

local cError = groups.Error.fg
local cInfo = groups.Information.fg
local cWarn = groups.Warning.fg
local cHint = groups.Hint.fg

Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)

-- TS
Group.new("typescriptVariableDeclaration", groups.PreProc)
Group.new("typescriptBlock", colors.yellow)
Group.new("typescriptBracers", colors.red)
Group.new("typescriptParens", colors.red)
Group.new("typescriptTypeBracket", colors.green)
