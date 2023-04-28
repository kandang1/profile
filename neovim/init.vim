set runtimepath^=~/.vim runtimepath+=~/.vim/after

let &packpath = &runtimepath
source ~/.vimrc

" Plugins will be downloaded under the specified directory.
call plug#begin()

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'navarasu/onedark.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set mouse=
colorscheme catppuccin
" colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

nnoremap <space> <cmd>Telescope grep_string theme=get_ivy<cr>
nnoremap <leader><space> <cmd>Telescope live_grep theme=get_ivy<cr>
