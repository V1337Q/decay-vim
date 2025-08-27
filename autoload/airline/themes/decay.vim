function! airline#themes#decay#refresh()
  let g:airline#themes#decay#palette = {}
  
  " Get current style configuration
  let l:style = get(g:, 'decay_style', 'base46')
  
  " Define palettes for each style
  if l:style ==# 'base46'
    let s:bg = '#171B20'
    let s:fg = '#b6beca'
    let s:dim = '#485263'
    let s:blue = '#70A5EB'
    let s:green = '#78DBA9'
    let s:yellow = '#f1cf8a'
    let s:red = '#e26c7c'
  elseif l:style ==# 'dark'
    let s:bg = '#101419'
    let s:fg = '#b6beca'
    let s:dim = '#485263'
    let s:blue = '#70a5eb'
    let s:green = '#78dba9'
    let s:yellow = '#f1cf8a'
    let s:red = '#e05f65'
  elseif l:style ==# 'decayce'
    let s:bg = '#0d0f18'
    let s:fg = '#a5b6cf'
    let s:dim = '#668acc'
    let s:blue = '#86aaec'
    let s:green = '#90ceaa'
    let s:yellow = '#ecd3a0'
    let s:red = '#dd6777'
  elseif l:style ==# 'light'
    let s:bg = '#dee1e6'
    let s:fg = '#101419'
    let s:dim = '#a1a8b3'
    let s:blue = '#4d82c8'
    let s:green = '#69b373'
    let s:yellow = '#ceac67'
    let s:red = '#bd3c42'
  endif

  " Normal mode
  let s:N1 = [ s:bg, s:blue, 0, 4 ]
  let s:N2 = [ s:fg, s:dim, 7, 8 ]
  let s:N3 = [ s:fg, s:bg, 7, 0 ]
  let g:airline#themes#decay#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

  " Insert mode
  let s:I1 = [ s:bg, s:green, 0, 2 ]
  let s:I2 = [ s:fg, s:dim, 7, 8 ]
  let s:I3 = [ s:fg, s:bg, 7, 0 ]
  let g:airline#themes#decay#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

  " Visual mode
  let s:V1 = [ s:bg, s:yellow, 0, 3 ]
  let s:V2 = [ s:fg, s:dim, 7, 8 ]
  let s:V3 = [ s:fg, s:bg, 7, 0 ]
  let g:airline#themes#decay#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

  " Replace mode
  let s:R1 = [ s:bg, s:red, 0, 1 ]
  let s:R2 = [ s:fg, s:dim, 7, 8 ]
  let s:R3 = [ s:fg, s:bg, 7, 0 ]
  let g:airline#themes#decay#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

  " Inactive mode
  let s:IA1 = [ s:dim, s:bg, 8, 0 ]
  let s:IA2 = [ s:dim, s:bg, 8, 0 ]
  let s:IA3 = [ s:dim, s:bg, 8, 0 ]
  let g:airline#themes#decay#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

  " Warning and error colors (consistent across styles)
  let s:warning = [ '#000000', '#ff9e64', 0, 3 ]
  let s:error = [ '#000000', '#f7768e', 0, 1 ]

  " Accent mode
  let g:airline#themes#decay#palette.accents = {
        \ 'red': s:error,
        \ 'yellow': s:warning,
        \ }

  " Tabline
  let g:airline#themes#decay#palette.tabline = {
        \ 'airline_tab': [ s:fg, s:dim, 7, 8 ],
        \ 'airline_tabsel': [ s:bg, s:blue, 0, 4 ],
        \ 'airline_tabtype': [ s:bg, s:green, 0, 2 ],
        \ 'airline_tabfill': [ s:fg, s:bg, 7, 0 ],
        \ 'airline_tabmod': [ s:bg, s:yellow, 0, 3 ],
        \ 'airline_tabmod_unsel': [ s:yellow, s:dim, 3, 8 ],
        \ }
endfunction

call airline#themes#decay#refresh()
