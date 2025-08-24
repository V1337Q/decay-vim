" -----------------------------------------------------------------------------
" Name:         Decay
" Description:  A clean, dark Vim theme with multiple style variants
" Author:       Yada Yada
" License:      MIT
" -----------------------------------------------------------------------------

" Initialization: {{{
highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'decay'
" }}}
" Configuration: {{{
let s:configuration = {}
let s:configuration.style = get(g:, 'decay_style', 'base46')  " base46, dark, decayce, light
let s:configuration.transparent_background = get(g:, 'decay_transparent_background', 0)
let s:configuration.disable_italic_comment = get(g:, 'decay_disable_italic_comment', 0)
let s:configuration.enable_italic = get(g:, 'decay_enable_italic', 0)
let s:configuration.cursor = get(g:, 'decay_cursor', 'auto')
let s:configuration.current_word = get(g:, 'decay_current_word', get(g:, 'decay_transparent_background', 0) == 0 ? 'grey background' : 'bold')
" }}}
" Palette: {{{
if s:configuration.style ==# 'base46'
  let s:palette = {
        \ 'bg0':        ['#171B20',   '235',  'Black'],
        \ 'bg1':        ['#1a1e24',   '236',  'DarkGrey'],
        \ 'bg2':        ['#1d2128',   '237',  'DarkGrey'],
        \ 'bg3':        ['#20242b',   '238',  'DarkGrey'],
        \ 'bg4':        ['#23272e',   '239',  'Grey'],
        \ 'fg':         ['#b6beca',   '250',  'White'],
        \ 'dim_fg':     ['#485263',   '246',  'LightGrey'],
        \ 'bright_fg':  ['#dee1e6',   '231',  'BrightWhite'],
        \ 'red':        ['#e26c7c',   '203',  'Red'],
        \ 'green':      ['#78DBA9',   '107',  'Green'],
        \ 'yellow':     ['#f1cf8a',   '179',  'Yellow'],
        \ 'blue':       ['#86aaec',   '110',  'Blue'],
        \ 'magenta':    ['#c68aee',   '176',  'Magenta'],
        \ 'cyan':       ['#70A5EB',   '117',  'Cyan'],
        \ 'grey':       ['#485263',   '246',  'LightGrey'],
        \ 'cursor':     ['#2b3038',   '240',  'DarkGrey'],
        \ 'selection':  ['#485263',   '240',  'DarkGrey'],
        \ 'search_bg':  ['#78DBA9',   '107',  'Green'],
        \ 'search_focus_bg': ['#86aaec', '110', 'Blue'],
        \ 'hint_start': ['#f1cf8a',   '179',  'Yellow'],
        \ 'hint_end':   ['#e9a180',   '209',  'LightRed'],
        \ 'none':       ['NONE',      'NONE', 'NONE']
        \ }
elseif s:configuration.style ==# 'dark'
  let s:palette = {
        \ 'bg0':        ['#101419',   '235',  'Black'],
        \ 'bg1':        ['#0d1014',   '236',  'DarkGrey'],
        \ 'bg2':        ['#0a0c0f',   '237',  'DarkGrey'],
        \ 'bg3':        ['#07080a',   '238',  'DarkGrey'],
        \ 'bg4':        ['#040405',   '239',  'Grey'],
        \ 'fg':         ['#b6beca',   '250',  'White'],
        \ 'dim_fg':     ['#6b7078',   '246',  'LightGrey'],
        \ 'bright_fg':  ['#dee1e6',   '231',  'BrightWhite'],
        \ 'red':        ['#e05f65',   '203',  'Red'],
        \ 'green':      ['#78dba9',   '107',  'Green'],
        \ 'yellow':     ['#f1cf8a',   '179',  'Yellow'],
        \ 'blue':       ['#70a5eb',   '110',  'Blue'],
        \ 'magenta':    ['#c68aee',   '176',  'Magenta'],
        \ 'cyan':       ['#74bee9',   '117',  'Cyan'],
        \ 'grey':       ['#485263',   '246',  'LightGrey'],
        \ 'cursor':     ['#384148',   '240',  'DarkGrey'],
        \ 'selection':  ['#485263',   '240',  'DarkGrey'],
        \ 'search_bg':  ['#78dba9',   '107',  'Green'],
        \ 'search_focus_bg': ['#70a5eb', '110', 'Blue'],
        \ 'hint_start': ['#f1cf8a',   '179',  'Yellow'],
        \ 'hint_end':   ['#e05f65',   '203',  'Red'],
        \ 'none':       ['NONE',      'NONE', 'NONE']
        \ }
elseif s:configuration.style ==# 'decayce'
  let s:palette = {
        \ 'bg0':        ['#0d0f18',   '235',  'Black'],
        \ 'bg1':        ['#050710',   '236',  'DarkGrey'],
        \ 'bg2':        ['#000008',   '237',  'DarkGrey'],
        \ 'bg3':        ['#000008',   '238',  'DarkGrey'],
        \ 'bg4':        ['#000008',   '239',  'Grey'],
        \ 'fg':         ['#a5b6cf',   '250',  'White'],
        \ 'dim_fg':     ['#8596af',   '246',  'LightGrey'],
        \ 'bright_fg':  ['#d0d3d8',   '231',  'BrightWhite'],
        \ 'red':        ['#dd6777',   '203',  'Red'],
        \ 'green':      ['#90ceaa',   '107',  'Green'],
        \ 'yellow':     ['#ecd3a0',   '179',  'Yellow'],
        \ 'blue':       ['#86aaec',   '110',  'Blue'],
        \ 'magenta':    ['#c296eb',   '176',  'Magenta'],
        \ 'cyan':       ['#93cee9',   '117',  'Cyan'],
        \ 'grey':       ['#668acc',   '246',  'LightGrey'],
        \ 'cursor':     ['#668acc',   '240',  'DarkGrey'],
        \ 'selection':  ['#668acc',   '240',  'DarkGrey'],
        \ 'search_bg':  ['#90ceaa',   '107',  'Green'],
        \ 'search_focus_bg': ['#86aaec', '110', 'Blue'],
        \ 'hint_start': ['#ecd3a0',   '179',  'Yellow'],
        \ 'hint_end':   ['#dd6777',   '203',  'Red'],
        \ 'none':       ['NONE',      'NONE', 'NONE']
        \ }
elseif s:configuration.style ==# 'light'
  let s:palette = {
        \ 'bg0':        ['#dee1e6',   '231',  'White'],
        \ 'bg1':        ['#d0d3d8',   '254',  'LightGrey'],
        \ 'bg2':        ['#c3c6cb',   '253',  'LightGrey'],
        \ 'bg3':        ['#b6b9bd',   '252',  'LightGrey'],
        \ 'bg4':        ['#a9acb0',   '251',  'Grey'],
        \ 'fg':         ['#101419',   '235',  'Black'],
        \ 'dim_fg':     ['#6b7078',   '246',  'LightGrey'],
        \ 'bright_fg':  ['#1f2328',   '234',  'DarkGrey'],
        \ 'red':        ['#bd3c42',   '203',  'Red'],
        \ 'green':      ['#69b373',   '107',  'Green'],
        \ 'yellow':     ['#ceac67',   '179',  'Yellow'],
        \ 'blue':       ['#4d82c8',   '110',  'Blue'],
        \ 'magenta':    ['#a367cb',   '176',  'Magenta'],
        \ 'cyan':       ['#519bc6',   '117',  'Cyan'],
        \ 'grey':       ['#a1a8b3',   '246',  'LightGrey'],
        \ 'cursor':     ['#4d82c8',   '240',  'DarkGrey'],
        \ 'selection':  ['#a1a8b3',   '240',  'DarkGrey'],
        \ 'search_bg':  ['#69b373',   '107',  'Green'],
        \ 'search_focus_bg': ['#4d82c8', '110', 'Blue'],
        \ 'hint_start': ['#ceac67',   '179',  'Yellow'],
        \ 'hint_end':   ['#bd3c42',   '203',  'Red'],
        \ 'none':       ['NONE',      'NONE', 'NONE']
        \ }
endif
" }}}
" Function: {{{
if (has('termguicolors') && &termguicolors) || has('gui_running')
  function! s:HL(group, fg, bg, ...)
    let hl_string = [
          \ 'highlight', a:group,
          \ 'guifg=' . a:fg[0],
          \ 'guibg=' . a:bg[0],
          \ ]
    if a:0 >= 1
      if a:1 ==# 'undercurl'
        call add(hl_string, 'gui=undercurl')
        call add(hl_string, 'cterm=underline')
      else
        call add(hl_string, 'gui=' . a:1)
        call add(hl_string, 'cterm=' . a:1)
      endif
    else
      call add(hl_string, 'gui=NONE')
      call add(hl_string, 'cterm=NONE')
    endif
    if a:0 >= 2
      call add(hl_string, 'guisp=' . a:2[0])
    endif
    execute join(hl_string, ' ')
  endfunction
else
  function! s:HL(group, fg, bg, ...)
    let hl_string = [
          \ 'highlight', a:group,
          \ 'ctermfg=' . a:fg[1],
          \ 'ctermbg=' . a:bg[1],
          \ ]
    if a:0 >= 1
      if a:1 ==# 'undercurl'
        call add(hl_string, 'cterm=underline')
      else
        call add(hl_string, 'cterm=' . a:1)
      endif
    else
      call add(hl_string, 'cterm=NONE')
    endif
    execute join(hl_string, ' ')
  endfunction
endif
" }}}

" Common Highlight Groups: {{{
" UI: {{{
if s:configuration.transparent_background
  call s:HL('Normal', s:palette.fg, s:palette.none)
  call s:HL('Terminal', s:palette.fg, s:palette.none)
  call s:HL('EndOfBuffer', s:palette.bg0, s:palette.none)
  call s:HL('FoldColumn', s:palette.grey, s:palette.none)
  call s:HL('Folded', s:palette.grey, s:palette.none)
  call s:HL('SignColumn', s:palette.fg, s:palette.none)
else
  call s:HL('Normal', s:palette.fg, s:palette.bg0)
  call s:HL('Terminal', s:palette.fg, s:palette.bg0)
  call s:HL('EndOfBuffer', s:palette.bg0, s:palette.bg0)
  call s:HL('FoldColumn', s:palette.grey, s:palette.bg1)
  call s:HL('Folded', s:palette.grey, s:palette.bg1)
  call s:HL('SignColumn', s:palette.fg, s:palette.bg1)
endif
call s:HL('ColorColumn', s:palette.none, s:palette.cursor)
call s:HL('Conceal', s:palette.grey, s:palette.none)
if s:configuration.cursor ==# 'auto'
  call s:HL('Cursor', s:palette.none, s:palette.none, 'reverse')
else
  call s:HL('Cursor', s:palette.bg0, s:palette.cursor)
endif
highlight! link vCursor Cursor
highlight! link iCursor Cursor
highlight! link lCursor Cursor
highlight! link CursorIM Cursor
call s:HL('CursorColumn', s:palette.none, s:palette.bg1)
call s:HL('CursorLine', s:palette.none, s:palette.bg1)
call s:HL('LineNr', s:palette.dim_fg, s:palette.none)
call s:HL('CursorLineNr', s:palette.yellow, s:palette.bg1)
call s:HL('DiffAdd', s:palette.none, s:palette.green)
call s:HL('DiffChange', s:palette.none, s:palette.blue)
call s:HL('DiffDelete', s:palette.none, s:palette.red)
call s:HL('DiffText', s:palette.none, s:palette.magenta)
call s:HL('Directory', s:palette.green, s:palette.none)
call s:HL('ErrorMsg', s:palette.red, s:palette.none, 'bold,underline')
call s:HL('WarningMsg', s:palette.yellow, s:palette.none, 'bold')
call s:HL('ModeMsg', s:palette.fg, s:palette.none, 'bold')
call s:HL('MoreMsg', s:palette.blue, s:palette.none, 'bold')
call s:HL('IncSearch', s:palette.bg0, s:palette.search_focus_bg)
call s:HL('Search', s:palette.bg0, s:palette.search_bg)
call s:HL('MatchParen', s:palette.none, s:palette.blue)
call s:HL('NonText', s:palette.bg4, s:palette.none)
call s:HL('Whitespace', s:palette.bg4, s:palette.none)
call s:HL('SpecialKey', s:palette.bg4, s:palette.none)
call s:HL('Pmenu', s:palette.fg, s:palette.bg2)
call s:HL('PmenuSbar', s:palette.none, s:palette.bg2)
call s:HL('PmenuSel', s:palette.bg0, s:palette.blue)
call s:HL('PmenuThumb', s:palette.none, s:palette.grey)
call s:HL('Question', s:palette.yellow, s:palette.none)
call s:HL('SpellBad', s:palette.red, s:palette.none, 'undercurl', s:palette.red)
call s:HL('SpellCap', s:palette.yellow, s:palette.none, 'undercurl', s:palette.yellow)
call s:HL('SpellLocal', s:palette.blue, s:palette.none, 'undercurl', s:palette.blue)
call s:HL('SpellRare', s:palette.magenta, s:palette.none, 'undercurl', s:palette.magenta)
call s:HL('StatusLine', s:palette.fg, s:palette.dim_fg)
call s:HL('StatusLineNC', s:palette.grey, s:palette.bg1)
call s:HL('TabLine', s:palette.fg, s:palette.bg4)
call s:HL('TabLineFill', s:palette.grey, s:palette.bg1)
call s:HL('TabLineSel', s:palette.bg0, s:palette.red)
call s:HL('VertSplit', s:palette.bg0, s:palette.bg0)
call s:HL('Visual', s:palette.none, s:palette.selection)
call s:HL('VisualNOS', s:palette.none, s:palette.hint_start, 'underline')
call s:HL('QuickFixLine', s:palette.blue, s:palette.none, 'bold')
call s:HL('Debug', s:palette.yellow, s:palette.none)
call s:HL('debugPC', s:palette.bg0, s:palette.green)
call s:HL('debugBreakpoint', s:palette.bg0, s:palette.red)
" }}}
" Syntax: {{{
if s:configuration.enable_italic
  call s:HL('Type', s:palette.cyan, s:palette.none, 'italic')
  call s:HL('Structure', s:palette.cyan, s:palette.none, 'italic')
  call s:HL('StorageClass', s:palette.cyan, s:palette.none, 'italic')
  call s:HL('Identifier', s:palette.magenta, s:palette.none, 'italic')
  call s:HL('Constant', s:palette.yellow, s:palette.none, 'italic')
else
  call s:HL('Type', s:palette.cyan, s:palette.none)
  call s:HL('Structure', s:palette.cyan, s:palette.none)
  call s:HL('StorageClass', s:palette.cyan, s:palette.none)
  call s:HL('Identifier', s:palette.magenta, s:palette.none)
  call s:HL('Constant', s:palette.yellow, s:palette.none)
endif
call s:HL('PreProc', s:palette.red, s:palette.none)
call s:HL('PreCondit', s:palette.red, s:palette.none)
call s:HL('Include', s:palette.red, s:palette.none)
call s:HL('Keyword', s:palette.red, s:palette.none)
call s:HL('Define', s:palette.red, s:palette.none)
call s:HL('Typedef', s:palette.red, s:palette.none)
call s:HL('Exception', s:palette.red, s:palette.none)
call s:HL('Conditional', s:palette.red, s:palette.none)
call s:HL('Repeat', s:palette.red, s:palette.none)
call s:HL('Statement', s:palette.red, s:palette.none)
call s:HL('Macro', s:palette.magenta, s:palette.none)
call s:HL('Error', s:palette.red, s:palette.none)
call s:HL('Label', s:palette.magenta, s:palette.none)
call s:HL('Special', s:palette.magenta, s:palette.none)
call s:HL('SpecialChar', s:palette.magenta, s:palette.none)
call s:HL('Boolean', s:palette.magenta, s:palette.none)
call s:HL('String', s:palette.green, s:palette.none)
call s:HL('Character', s:palette.green, s:palette.none)
call s:HL('Number', s:palette.yellow, s:palette.none)
call s:HL('Float', s:palette.yellow, s:palette.none)
call s:HL('Function', s:palette.magenta, s:palette.none)
call s:HL('Operator', s:palette.red, s:palette.none)
call s:HL('Title', s:palette.red, s:palette.none, 'bold')
call s:HL('Tag', s:palette.yellow, s:palette.none)
call s:HL('Delimiter', s:palette.fg, s:palette.none)
if s:configuration.disable_italic_comment
  call s:HL('Comment', s:palette.dim_fg, s:palette.none)
  call s:HL('SpecialComment', s:palette.dim_fg, s:palette.none)
  call s:HL('Todo', s:palette.blue, s:palette.none)
else
  call s:HL('Comment', s:palette.dim_fg, s:palette.none, 'italic')
  call s:HL('SpecialComment', s:palette.dim_fg, s:palette.none, 'italic')
  call s:HL('Todo', s:palette.blue, s:palette.none, 'italic')
endif
call s:HL('Ignore', s:palette.grey, s:palette.none)
call s:HL('Underlined', s:palette.none, s:palette.none, 'underline')
" }}}
" }}}

" C++ Specific Highlighting: {{{
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
" }}}

" Plugin Support: {{{
" ALE.vim
call s:HL('ALEVirtualTextWarning', s:palette.yellow, s:palette.bg0)
call s:HL('ALEVirtualTextError', s:palette.red, s:palette.bg0)

" CoC.vim
call s:HL('CocMenuSel', s:palette.green, s:palette.bg0)
call s:HL('CocPumMenu', s:palette.fg, s:palette.bg1)
call s:HL('CocPumVirtualText', s:palette.dim_fg, s:palette.none)
call s:HL('CocFloating', s:palette.fg, s:palette.bg1)
call s:HL('CocSearch', s:palette.green, s:palette.none)

" Handles fillchars 
call s:HL('StatusLineNC', s:palette.bg0, s:palette.bg0)
call s:HL('CursorLine', s:palette.none, s:palette.none)
hi! NonText ctermbg=NONE guibg=NONE
call s:HL('CursorLineNr', s:palette.yellow, s:palette.none)
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
