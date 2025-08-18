" Airline theme: decayvim
let g:airline#themes#decayce#palette = {}

" Normal mode
let s:N1 = [ '#171B20', '#70A5EB', 0, 4 ]
let s:N2 = [ '#b6beca', '#485263', 7, 8 ]
let s:N3 = [ '#b6beca', '#171B20', 7, 0 ]
let g:airline#themes#decayce#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

" Insert mode
let s:I1 = [ '#171B20', '#78DBA9', 0, 2 ]
let s:I2 = [ '#b6beca', '#485263', 7, 8 ]
let s:I3 = [ '#b6beca', '#171B20', 7, 0 ]
let g:airline#themes#decayce#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

" Visual mode
let s:V1 = [ '#171B20', '#f1cf8a', 0, 3 ]
let s:V2 = [ '#b6beca', '#485263', 7, 8 ]
let s:V3 = [ '#b6beca', '#171B20', 7, 0 ]
let g:airline#themes#decayce#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

" Replace mode
let s:R1 = [ '#171B20', '#e26c7c', 0, 1 ]
let s:R2 = [ '#b6beca', '#485263', 7, 8 ]
let s:R3 = [ '#b6beca', '#171B20', 7, 0 ]
let g:airline#themes#decayce#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" Inactive mode
let s:IA1 = [ '#485263', '#171B20', 8, 0 ]
let s:IA2 = [ '#485263', '#171B20', 8, 0 ]
let s:IA3 = [ '#485263', '#171B20', 8, 0 ]
let g:airline#themes#decayce#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
