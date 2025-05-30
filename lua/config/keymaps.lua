-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- shorten timeoutlen only for jk | kj <Esc> without effecting other keybinds
-- jk saves, kj does not
vim.cmd([[
  let g:esc_j_lasttime = 0
  let g:esc_k_lasttime = 0
  function! JKescape(key)
    if a:key=='j' | let g:esc_j_lasttime = reltimefloat(reltime()) | endif
    if a:key=='k' | let g:esc_k_lasttime = reltimefloat(reltime()) | endif
    let l:timediff = abs(g:esc_j_lasttime - g:esc_k_lasttime)
    return (l:timediff <= 0.1 && l:timediff >=0.001) ? a:key=='k' ? "\b\e:w\<CR>" : "\b\e" : a:key
  endfunction
  inoremap <expr> j JKescape('j')
  inoremap <expr> k JKescape('k')
]])

vim.keymap.set("n", "<leader>t", "<CMD>ToggleTerm direction=float<CR>")

vim.keymap.set("n", "<leader>ie", "oif err != nil {<Enter>}<Esc>:lua vim.lsp.buf.format()<CR>O")
vim.keymap.set("n", "<leader>pm", "ipackage main<Enter><Enter>func main() {<Enter>}<Esc>:lua vim.lsp.buf.format()<CR>O")
