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

" Airline Theme Integration: {{{
function! s:SetupAirline()
  " Set airline theme to our decay theme
  let g:airline_theme = 'decay'
  
  " Force airline to reload if it's already loaded
  if exists('g:loaded_airline')
    silent! call airline#load_theme()
  endif
endfunction

" Auto-setup airline when colorscheme loads
call s:SetupAirline()

" Command to change style and refresh everything
command! -nargs=1 DecayStyle call s:SetDecayStyle(<f-args>)

function! s:SetDecayStyle(style)
  let g:decay_style = a:style
  colorscheme decay
  echo 'Decay theme set to:' a:style
endfunction

" Convenience commands
command! DecayBase46 call s:SetDecayStyle('base46')
command! DecayDark call s:SetDecayStyle('dark') 
command! DecayDecayce call s:SetDecayStyle('decayce')
command! DecayLight call s:SetDecayStyle('light')
" }}}

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
" First define custom highlight groups for cpp-modern
call s:HL('CppSTLType', s:palette.yellow, s:palette.none)
call s:HL('CppSTLFunction', s:palette.magenta, s:palette.none)
call s:HL('CppSTLMember', s:palette.cyan, s:palette.none)
call s:HL('CppSTLNamespace', s:palette.blue, s:palette.none)
call s:HL('CppSTLIos', s:palette.magenta, s:palette.none)
call s:HL('CppSTLConstant', s:palette.blue, s:palette.none)
call s:HL('CppAccess', s:palette.red, s:palette.none)

augroup CppFileHighlight
  autocmd!
  autocmd FileType cpp syntax match cppFieldAccess /\.\zs\h\w*/ 
augroup END

" Syntax patterns with proper highlighting
syntax match cppObjectInstance /\<\h\w*\>\ze\.\h\w*/
syntax match cppObjectInstance /\<\h\w*\>\ze->\h\w*/
syntax match cppInt /\<\h\w*\>\ze\*\h\w*/
syntax match cppBraces /[{}]/
syntax match cppBraces2 /[()]/

" Link syntax items to our defined highlight groups
hi! link cppFieldAccess Error
hi! link cppObjectInstance Identifier
hi! link cppInt Type
hi! link cppBraces Delimiter
hi! link cppBraces2 Delimiter

" Link cpp-modern syntax groups to our custom highlights
hi! link cppSTLType CppSTLType
hi! link cppSTLFunction CppSTLFunction
hi! link cppSTLMember CppSTLMember
hi! link cppSTLnamespace CppSTLNamespace
hi! link cppSTLios CppSTLIos
hi! link cppSTLconstant CppSTLConstant
hi! link cppSTLstrak CppAccess
hi! link cppSTLret CppAccess
hi! link cppSTLnumbs Number
hi! link cppSTLpunct Delimiter
hi! link cppScope Structure
hi! link cppDotAccess Operator
hi! link cppPointerMemberAccess Operator
hi! link cppSTLvariable Identifier
" }}}

" XML: {{{
hi! link xmlTag Statement
hi! link xmlEndTag Statement
hi! link xmlTagName Statement
hi! link xmlEqual Operator
hi! link docbkKeyword PreProc

hi! link xmlDocTypeDecl Comment
hi! link xmlDocTypeKeyword Type
hi! link xmlCdataStart Comment
hi! link xmlCdataCdata Type
hi! link dtdFunction Comment
hi! link dtdTagName Type

hi! link xmlAttrib Identifier
hi! link xmlProcessingDelim Comment
hi! link dtdParamEntityPunct Comment
hi! link dtdParamEntityDPunct Comment
hi! link xmlAttribPunct Comment

hi! link xmlEntity Constant
hi! link xmlEntityPunct Constant
" }}}

" Vim: {{{
call s:HL('vimCommentTitle', s:palette.dim_fg, s:palette.none, 'bold')

hi! link vimNotation Constant
hi! link vimBracket Constant
hi! link vimMapModKey Constant
hi! link vimFuncSID Identifier
hi! link vimSetSep Delimiter
hi! link vimSep Delimiter
hi! link vimContinue Delimiter
" }}}

" Clojure: {{{
hi! link clojureKeyword Statement
hi! link clojureCond Conditional
hi! link clojureSpecial Special
hi! link clojureDefine Define

hi! link clojureFunc Function
hi! link clojureRepeat Repeat
hi! link clojureCharacter Character
hi! link clojureStringEscape Special
hi! link clojureException Exception

hi! link clojureRegexp String
hi! link clojureRegexpEscape Special
call s:HL('clojureRegexpCharClass', s:palette.fg, s:palette.none, 'bold')
hi! link clojureRegexpMod clojureRegexpCharClass
hi! link clojureRegexpQuantifier clojureRegexpCharClass

hi! link clojureParen Delimiter
hi! link clojureAnonArg Constant
hi! link clojureVariable Identifier
hi! link clojureMacro Macro

hi! link clojureMeta Special
hi! link clojureDeref Special
hi! link clojureQuote Special
hi! link clojureUnquote Special
" }}}

" C: {{{
hi! link cOperator Operator
hi! link cStructure Structure
" }}}

" CSS: {{{
hi! link cssBraces Delimiter
hi! link cssFunctionName Function
hi! link cssIdentifier Identifier
hi! link cssClassName Type
hi! link cssColor Constant
hi! link cssSelectorOp Operator
hi! link cssSelectorOp2 Operator
hi! link cssImportant Statement
hi! link cssVendor Identifier

hi! link cssTextProp Type
hi! link cssAnimationProp Type
hi! link cssUIProp Identifier
hi! link cssTransformProp Type
hi! link cssTransitionProp Type
hi! link cssPrintProp Type
hi! link cssPositioningProp Identifier
hi! link cssBoxProp Type
hi! link cssFontDescriptorProp Type
hi! link cssFlexibleBoxProp Type
hi! link cssBorderOutlineProp Type
hi! link cssBackgroundProp Type
hi! link cssMarginProp Type
hi! link cssListProp Type
hi! link cssTableProp Type
hi! link cssFontProp Type
hi! link cssPaddingProp Type
hi! link cssDimensionProp Type
hi! link cssRenderProp Type
hi! link cssColorProp Type
hi! link cssGeneratedContentProp Type
" }}}

" JavaScript: {{{
hi! link javaScriptBraces Delimiter
hi! link javaScriptFunction Function
hi! link javaScriptIdentifier Identifier
hi! link javaScriptMember Identifier
hi! link javaScriptNumber Number
hi! link javaScriptNull Constant
hi! link javaScriptParens Delimiter

" YAJS
hi! link javascriptImport Include
hi! link javascriptExport Include
hi! link javascriptClassKeyword Structure
hi! link javascriptClassExtends Structure
hi! link javascriptDefault Statement

hi! link javascriptClassName Type
hi! link javascriptClassSuperName Type
hi! link javascriptGlobal Identifier

hi! link javascriptEndColons Delimiter
hi! link javascriptFuncArg Identifier
hi! link javascriptGlobalMethod Function
hi! link javascriptNodeGlobal Identifier
hi! link javascriptBOMWindowProp Identifier
hi! link javascriptArrayMethod Function
hi! link javascriptArrayStaticMethod Function
hi! link javascriptCacheMethod Function
hi! link javascriptDateMethod Function
hi! link javascriptMathStaticMethod Function

hi! link javascriptURLUtilsProp Identifier
hi! link javascriptBOMNavigatorProp Identifier
hi! link javascriptDOMDocMethod Function
hi! link javascriptDOMDocProp Identifier
hi! link javascriptBOMLocationMethod Function
hi! link javascriptBOMWindowMethod Function
hi! link javascriptStringMethod Function

hi! link javascriptVariable Identifier
hi! link javascriptIdentifier Identifier
hi! link javascriptClassSuper Type

hi! link javascriptFuncKeyword Statement
hi! link javascriptAsyncFunc Statement
hi! link javascriptClassStatic StorageClass

hi! link javascriptOperator Operator
hi! link javascriptForOperator Operator
hi! link javascriptYield Statement
hi! link javascriptExceptions Exception
hi! link javascriptMessage Error

hi! link javascriptTemplateSB Delimiter
hi! link javascriptTemplateSubstitution Identifier

hi! link javascriptLabel Label
hi! link javascriptObjectLabel Identifier
hi! link javascriptPropertyName Identifier

hi! link javascriptLogicSymbols Operator
hi! link javascriptArrowFunc Function

hi! link javascriptDocParamName Comment
hi! link javascriptDocTags SpecialComment
hi! link javascriptDocNotation Comment
hi! link javascriptDocParamType Type
hi! link javascriptDocNamedParamType Type

hi! link javascriptBrackets Delimiter
hi! link javascriptDOMElemAttrs Identifier
hi! link javascriptDOMEventMethod Function
hi! link javascriptDOMNodeMethod Function
hi! link javascriptDOMStorageMethod Function
hi! link javascriptHeadersMethod Function

hi! link javascriptAsyncFuncKeyword Exception
hi! link javascriptAwaitFuncKeyword Exception
" }}}

" TypeScript: {{{
hi! link typeScriptReserved Statement
hi! link typeScriptLabel Label
hi! link typeScriptFuncKeyword Statement
hi! link typeScriptIdentifier Identifier
hi! link typeScriptBraces Delimiter
hi! link typeScriptEndColons Delimiter
hi! link typeScriptDOMObjects Identifier
hi! link typeScriptAjaxMethods Function
hi! link typeScriptLogicSymbols Operator
hi! link typeScriptDocSeeTag Comment
hi! link typeScriptDocParam Comment
hi! link typeScriptDocTags SpecialComment
hi! link typeScriptGlobalObjects Identifier
hi! link typeScriptParens Delimiter
hi! link typeScriptOpSymbols Operator
hi! link typeScriptHtmlElemProperties Identifier
hi! link typeScriptNull Constant
hi! link typeScriptInterpolationDelimiter Delimiter
" }}}

" PureScript: {{{
hi! link purescriptModuleKeyword Include
hi! link purescriptModuleName Identifier
hi! link purescriptWhere Statement
hi! link purescriptDelimiter Delimiter
hi! link purescriptType Type
hi! link purescriptImportKeyword Include
hi! link purescriptHidingKeyword Include
hi! link purescriptAsKeyword Include
hi! link purescriptStructure Structure
hi! link purescriptOperator Operator

hi! link purescriptTypeVar Type
hi! link purescriptConstructor Function
hi! link purescriptFunction Function
hi! link purescriptConditional Conditional
hi! link purescriptBacktick Operator
" }}}

" CoffeeScript: {{{
hi! link coffeeExtendedOp Operator
hi! link coffeeSpecialOp Operator
hi! link coffeeCurly Delimiter
hi! link coffeeParen Delimiter
hi! link coffeeBracket Delimiter
" }}}

" Ruby: {{{
hi! link rubyStringDelimiter String
hi! link rubyInterpolationDelimiter Delimiter
" }}}

" ObjectiveC: {{{
hi! link objcTypeModifier StorageClass
hi! link objcDirective PreProc
" }}}

" Go: {{{
hi! link goDirective PreProc
hi! link goConstants Constant
hi! link goDeclaration Statement
hi! link goDeclType Type
hi! link goBuiltins Function
" }}}

" Lua: {{{
hi! link luaIn Include
hi! link luaFunction Function
hi! link luaTable Structure
" }}}

" MoonScript: {{{
hi! link moonSpecialOp Operator
hi! link moonExtendedOp Operator
hi! link moonFunction Function
hi! link moonObject Constant
" }}}

" Java: {{{
hi! link javaAnnotation PreProc
hi! link javaDocTags SpecialComment
hi! link javaCommentTitle Comment
hi! link javaParen Delimiter
hi! link javaParen1 Delimiter
hi! link javaParen2 Delimiter
hi! link javaParen3 Delimiter
hi! link javaParen4 Delimiter
hi! link javaParen5 Delimiter
hi! link javaOperator Operator

hi! link javaVarArg Identifier
" }}}

" Elixir: {{{
hi! link elixirDocString Comment

hi! link elixirStringDelimiter String
hi! link elixirInterpolationDelimiter Delimiter

hi! link elixirModuleDeclaration Structure
" }}}

" Scala: {{{
hi! link scalaNameDefinition Identifier
hi! link scalaCaseFollowing Identifier
hi! link scalaCapitalWord Identifier
hi! link scalaTypeExtension Type

hi! link scalaKeyword Statement
hi! link scalaKeywordModifier StorageClass

hi! link scalaSpecial Special
hi! link scalaOperator Operator

hi! link scalaTypeDeclaration Type
hi! link scalaTypeTypePostDeclaration Type

hi! link scalaInstanceDeclaration Identifier
hi! link scalaInterpolation String
" }}}

" Markdown: {{{
call s:HL('markdownItalic', s:palette.fg, s:palette.none, 'italic')

hi! link markdownH1 Title
hi! link markdownH2 Title
hi! link markdownH3 Title
hi! link markdownH4 Title
hi! link markdownH5 Title
hi! link markdownH6 Title

hi! link markdownCode Special
hi! link markdownCodeBlock Special
hi! link markdownCodeDelimiter Delimiter

hi! link markdownBlockquote Comment
hi! link markdownListMarker Special
hi! link markdownOrderedListMarker Special
hi! link markdownRule Special
hi! link markdownHeadingRule Special

hi! link markdownUrlDelimiter Delimiter
hi! link markdownLinkDelimiter Delimiter
hi! link markdownLinkTextDelimiter Delimiter

hi! link markdownHeadingDelimiter Operator
hi! link markdownUrl Underlined
hi! link markdownUrlTitleDelimiter Operator

call s:HL('markdownLinkText', s:palette.grey, s:palette.none, 'underline')
hi! link markdownIdDeclaration markdownLinkText
" }}}

" Haskell: {{{
hi! link haskellType Type
hi! link haskellIdentifier Identifier
hi! link haskellSeparator Delimiter
hi! link haskellDelimiter Delimiter
hi! link haskellOperators Operator

hi! link haskellBacktick Operator
hi! link haskellStatement Statement
hi! link haskellConditional Conditional

hi! link haskellLet Statement
hi! link haskellDefault Statement
hi! link haskellWhere Statement
hi! link haskellBottom Statement
hi! link haskellBlockKeywords Statement
hi! link haskellImportKeywords Include
hi! link haskellDeclKeyword Statement
hi! link haskellDeriving Statement
hi! link haskellAssocType Type

hi! link haskellNumber Number
hi! link haskellPragma PreProc

hi! link haskellString String
hi! link haskellChar Character
" }}}

" Json: {{{
hi! link jsonKeyword Label
hi! link jsonQuote Delimiter
hi! link jsonBraces Delimiter
hi! link jsonString String
" }}}

" C & C++: {{{
" -----------------------------------------------------------------------------
" 1. Preprocessor
call s:HL('CDefine', s:palette.magenta, s:palette.none) " #define macros
call s:HL('CPreCondit', s:palette.red, s:palette.none, 'italic') " #if, #ifdef, #else, #endif
call s:HL('CPreProc', s:palette.red, s:palette.none) " Other preprocessor directives

" 2. Types & Structures
call s:HL('CType', s:palette.cyan, s:palette.none) " int, char, void, bool, etc.
call s:HL('CStorageClass', s:palette.cyan, s:palette.none, 'italic') " static, extern, register, typedef
call s:HL('CStructure', s:palette.yellow, s:palette.none, 'bold') " struct, union, enum

" 3. Constants & Literals
call s:HL('CConstant', s:palette.yellow, s:palette.none) " NULL, true, false
call s:HL('CString', s:palette.green, s:palette.none) " String literals
call s:HL('CCharacter', s:palette.green, s:palette.none) " Character literals
call s:HL('CNumber', s:palette.yellow, s:palette.none) " Numeric constants
call s:HL('CFloat', s:palette.yellow, s:palette.none) " Floating point numbers

" 4. Language Statements
call s:HL('CStatement', s:palette.magenta, s:palette.none) " if, else, for, while, return, goto
call s:HL('CLabel', s:palette.magenta, s:palette.none) " case, default labels and goto labels
call s:HL('COperator', s:palette.red, s:palette.none) " +, -, *, /, ->, ., ::, etc.
call s:HL('CRepeat', s:palette.red, s:palette.none) " for, while, do

" 5. C++ Specific
call s:HL('CppAccess', s:palette.red, s:palette.none) " public:, private:, protected:
call s:HL('CppCast', s:palette.cyan, s:palette.none, 'italic') " static_cast, dynamic_cast, etc.
call s:HL('CppExceptions', s:palette.red, s:palette.none) " try, catch, throw
call s:HL('CppModifier', s:palette.cyan, s:palette.none) " virtual, explicit, override, final
call s:HL('CppStatement', s:palette.red, s:palette.none) " using, namespace, template
call s:HL('CppType', s:palette.cyan, s:palette.none, 'bold') " class, typename, auto, decltype

" 6. Special Contexts
call s:HL('CSpecial', s:palette.magenta, s:palette.none) " Special characters in strings (\n, \t)
call s:HL('CFormat', s:palette.yellow, s:palette.none) " printf format specifiers (%d, %s)
call s:HL('CTodo', s:palette.blue, s:palette.none, 'bold,italic') " TODO, FIXME, NOTE in comments

" Preprocessor
hi! link cInclude Include " #include (keep original link)
hi! link cDefine CDefine
hi! link cPreProc CPreProc
hi! link cPreCondit CPreCondit

" Types & Structures
hi! link cType CType
hi! link cStorageClass CStorageClass
hi! link cStructure CStructure

" Constants & Literals
hi! link cConstant CConstant
hi! link cString CString
hi! link cCharacter CCharacter
hi! link cNumber CNumber
hi! link cFloat CFloat

" Language Statements
hi! link cStatement CStatement
hi! link cLabel CLabel
hi! link cOperator COperator
hi! link cRepeat CRepeat

" Special Contexts
hi! link cSpecial CSpecial
hi! link cFormat CFormat
hi! link cTodo CTodo

" C++ Specific Links
hi! link cppAccess CppAccess
hi! link cppCast CppCast
hi! link cppExceptions CppExceptions
hi! link cppModifier CppModifier
hi! link cppStatement CppStatement
hi! link cppType CppType

" Make C++ STL types stand out (optional)
call s:HL('CppSTLType', s:palette.yellow, s:palette.none, 'italic')
hi! link cppSTLtype CppSTLType " vector, string, map, etc.

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

" Vim-virdish Support
if exists('g:loaded_virdish')
  call s:HL('VirdishDir', s:palette.green, s:palette.none)
  call s:HL('VirdishSymlink', s:palette.cyan, s:palette.none, 'underline')
  call s:HL('VirdishExecutable', s:palette.red, s:palette.none, 'bold')
  call s:HL('VirdishSocket', s:palette.magenta, s:palette.none)
  call s:HL('VirdishBlockDevice', s:palette.yellow, s:palette.none)
  call s:HL('VirdishCharDevice', s:palette.yellow, s:palette.none, 'bold')
endif

" Handles fillchars 
call s:HL('StatusLineNC', s:palette.bg0, s:palette.bg0)
call s:HL('CursorLine', s:palette.none, s:palette.none)
hi! NonText ctermbg=NONE guibg=NONE
call s:HL('CursorLineNr', s:palette.yellow, s:palette.none)
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
