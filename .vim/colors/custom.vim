"
" my colorscheme
" ==============
"
" author: Sören Wegener
"
set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "custom"

" General
hi Normal       guifg=#ffffff guibg=#000000
hi NonText      guifg=#000000 guibg=#000000

hi Comment      guifg=#aaaaaa gui=italic
hi Constant     guifg=#00aaff gui=bold
hi ColorColumn                guibg=#bb0000
hi Error                      guibg=#ff0000
hi Folded       guifg=#aaaaaa guibg=#404040
hi Function     guifg=#6bb5ff
hi Identifier   guifg=#6bb5ff
hi Keyword      guifg=#16ca1a gui=bold
hi LineNr       guifg=#ffff00
hi Number       guifg=#46bdff
hi PreProc      guifg=#cd2828 gui=bold
hi Search       guifg=#000000 guibg=#bbbb00
"hi Special      guifg=#ee00ee
hi Statement    guifg=#6ab825
hi String       guifg=#ee9f00 gui=italic
hi Title        guifg=#ffffff gui=bold
hi Todo         guifg=#000000 guibg=#ffff00
hi Type         guifg=#ffffff gui=bold
hi Visual       guifg=#000000 guibg=#ffffff

" menus
hi StatusLine   guifg=#dddddd guibg=#000000
hi StatusLineNC guifg=#aaaaaa guibg=#222222
hi VertSplit    guifg=#000000 guibg=#ffffff

" language specific colors
"0a0a0ahi djangoTagBlock guifg=#cd2828 gui=bold
