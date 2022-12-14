local keymap = vim.keymap

keymap.set('n', 'x', '"_x')
-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-G>', 'gg<S-v>G')
-- Format all and come to the end
keymap.set('n', '<Space>=', 'gg<S-v>G=G')
-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
-- keymap.set('n', '<Space>t', ':tabedit<Return>')
-- New tab + telescope find files
keymap.set('n', '<Space>t', ':tabedit<Return>:Telescope find_files<Return>')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
-- keymap.set('n', '<Space>', '<C-w>w') working, not isnt needed
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')


-- AstroVim like maps
keymap.set('n', '<Space>w', ':w<Return>') -- Save
keymap.set('n', '<Space>q', ':q<Return>') -- Quit
keymap.set('n', '<Space>h', ':nohlsearch<Return>') -- No Hightlight
keymap.set('n', '<Space>fn', ':enew<Return>') -- New File

-- Folding
keymap.set('n', ';z', 'vatzf') -- Close Fold under cursor
