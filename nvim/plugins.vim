call plug#begin('~/.local/share/nvim/plugins')

Plug '~/.local/share/nvim/plugins/dracula_pro'

call plug#end()

let g:dracula_colorterm = 0

colorscheme dracula_pro
