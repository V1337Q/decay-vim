" Vim fork of Decaycs's Decay colorscheme)
set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "decayce"

" Color definitions
let s:bg      = "#171B20"
let s:fg      = "#b6beca"
let s:cursor  = "#2b3038"
let s:dim_fg  = "#485263"
let s:bright_fg = "#dee1e6"
let s:red     = "#e26c7c"
let s:green   = "#78DBA9"
let s:yellow  = "#f1cf8a"
let s:blue    = "#86aaec"
let s:magenta = "#c68aee"
let s:cyan    = "#70A5EB"
let s:white   = "#b6beca"
let s:bright_white = "#dee1e6"
let s:search_bg = "#78DBA9"
let s:search_focus_bg = "#86aaec"
let s:hint_start_bg = "#f1cf8a"
let s:hint_end_bg = "#e9a180"
"let s:selection_bg = "#b6beca"
let s:selection_bg = "#485263"

" Highlights
execute "highlight Normal       guifg=" . s:fg . " guibg=" . s:bg
execute "highlight Comment      guifg=" . s:dim_fg . " gui=italic"
execute "highlight Identifier   guifg=" . s:magenta
execute "highlight Function     guifg=" . s:magenta
execute "highlight Statement    guifg=" . s:blue
execute "highlight Keyword      guifg=" . s:blue . " gui=bold"
execute "highlight Constant     guifg=" . s:yellow
execute "highlight String       guifg=" . s:green
execute "highlight Number       guifg=" . s:yellow
execute "highlight Type         guifg=" . s:cyan

execute "highlight LineNr       guifg=" . s:dim_fg . " guibg=" . s:bg
execute "highlight CursorLineNr guifg=" . s:yellow . " guibg=" . s:bg
execute "highlight VertSplit    guifg=" . s:dim_fg . " guibg=" . s:bg
execute "highlight StatusLine   guifg=" . s:fg . " guibg=" . s:dim_fg
execute "highlight Pmenu        guifg=" . s:fg . " guibg=" . s:dim_fg
execute "highlight PmenuSel     guifg=" . s:bg . " guibg=" . s:blue
execute "highlight Visual       guibg=" . s:selection_bg
" execute "highlight CursorLine   guibg=" . s:dim_fg " guifg=" . s:fg
" execute "highlight ColorColumn  guibg=" . s:dim_fg " guifg=" . s:fg
execute "highlight CursorLine   guibg=" . s:cursor " guifg=" . s:fg
execute "highlight ColorColumn  guibg=" . s:cursor " guifg=" . s:fg
execute "highlight MatchParen   guifg=#ffffff guibg=" . s:blue

" Diagnostics and UI feedback
execute "highlight Error        guifg=" . s:red
execute "highlight WarningMsg   guifg=" . s:yellow
execute "highlight Todo         guifg=" . s:yellow . " gui=bold"
execute "highlight Search       guifg=" . s:bg . " guibg=" . s:search_bg
execute "highlight IncSearch    guifg=" . s:bg . " guibg=" . s:search_focus_bg
execute "highlight VisualNOS    guibg=" . s:hint_start_bg
execute "highlight DiffAdd      guibg=" . s:green
execute "highlight DiffDelete   guibg=" . s:red
execute "highlight DiffChange   guibg=" . s:blue
execute "highlight DiffText     guibg=" . s:magenta


" Colors for Cpp (With vim-cpp-modern installed)

augroup CppFileHighlight
  autocmd!
  autocmd FileType cpp syntax match cppFieldAccess /\.\zs\h\w*/ | highlight cppFieldAccess ctermfg=Red guifg=#ff7a92
augroup END

syntax match cppObjectInstance /\<\h\w*\>\ze\.\h\w*/
syntax match cppObjectInstance /\<\h\w*\>\ze->\h\w*/
highlight cppObjectInstance ctermfg=Blue guifg=#86aaec
highlight cppSTLconstant ctermfg=Blue guifg=#86aaec
highlight cppSTLstrak ctermfg=Blue guifg=#c68aee
highlight cppSTLret ctermfg=Blue guifg=#c68aee
highlight cppSTLnumbs ctermfg=Blue guifg=#e9a180

highlight cppSTLpunct ctermfg=Blue guifg=#c68aee
syntax match cppInt /\<\h\w*\>\ze\*\h\w*/
highlight cppInt ctermfg=Blue guifg=#86aaec

hi! cppScope guifg=#c68aee
hi! cppDotAccess guifg=#c68aee
hi! cppPointerMemberAccess guifg=#c68aee

syntax match cppBraces /[{}]/
syntax match cppBraces2 /[()]/
highlight cppBraces guifg=#c68aee
highlight cppBraces2 guifg=#c68aee

highlight cppSTLType       guifg=#e9a180 ctermfg=214
highlight cppSTLFunction   guifg=#ff7a92 ctermfg=34
highlight cppSTLMember     guifg=#00AFFF ctermfg=39
highlight cppSTLvariable   guifg=#ff7a92 ctermfg=39
highlight cppSTLios   guifg=#ff7a92 ctermfg=39
highlight cppSTLnamespace   guifg=#c68aee ctermfg=39
