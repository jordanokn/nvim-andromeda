" andromeda.vim - Custom theme for Neovim
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "andromeda"

" Define background and basic colors
set background=dark
hi Normal guifg=#e5e9f0 guibg=#2e3440
hi Comment guifg=#636f88 gui=italic
hi Keyword guifg=#81a1c1 gui=bold
hi String guifg=#a3be8c
hi Function guifg=#88c0d0
" Add more highlights as needed

