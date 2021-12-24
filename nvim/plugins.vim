call plug#begin('~/.config/nvim/autoload')

Plug '~/.config/nvim/autoload/dracula'

call plug#end()

let g:dracula_colorterm = 0

colorscheme dracula
