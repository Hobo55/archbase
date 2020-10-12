" =============================================================================
" Filename: autoload/lightline/colorscheme/grvbx.vim
" =============================================================================
" extra colors- 22,34,49,83,100,106,118,184,232,214,#abb2bf-bluish.wht,

let s:term_colo1 = 16		"blk
let s:term_colo2 = 235		"blk2
let s:term_colo3 = 38		"blue 31 38 80?
let s:term_colo4 = 43		"cyan
let s:term_colo5 = 107		"grn 48,70,35
let s:term_colo6 = 106		"grn2 35 106
let s:term_colo7 = 237		"grey
let s:term_colo8 = 240		"grey2
let s:term_colo9 = 243		"grey3
let s:term_colo10 = 179		"orange 209
let s:term_colo11 = 53		"purple
let s:term_colo12 = 131		"red
let s:term_colo13 = 124		"red2
let s:term_colo14 = 6		"teal
let s:term_colo15 = 15		"wht
let s:term_colo16 = 223		"wht2 231,180
let s:term_colo17 = 11		"yellow

"		special fg/fonts color
let s:term_spec = 22		"drk-grn
let s:term_spec2 = 21
let s:term_spec3 = 232

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ s:term_colo2, s:term_colo5, 'bold' ], [ s:term_colo16, s:term_colo2, ] ]
let s:p.normal.right = [ [ s:term_colo2, s:term_colo5, ], [ s:term_colo5, s:term_colo2, ], [ s:term_colo16, s:term_colo2, ] ]

let s:p.inactive.right = [ [ s:term_colo16, s:term_colo2 ], [ s:term_colo16, s:term_colo2 ] ]
let s:p.inactive.left = s:p.inactive.right[1:]

let s:p.insert.left = [ [ s:term_colo2, s:term_colo3, 'bold' ], [ s:term_colo16, s:term_colo2, ] ]
let s:p.insert.right = [ [ s:term_colo2, s:term_colo3, ], [ s:term_colo3, s:term_colo2, ], [ s:term_colo16, s:term_colo2, ] ]

let s:p.replace.left = [ [ s:term_colo2, s:term_colo12, 'bold'  ], [ s:term_colo16, s:term_colo2, ] ]
let s:p.replace.right = [ [ s:term_colo15, s:term_colo12, ], [ s:term_colo16, s:term_colo2, ], [ s:term_colo16, s:term_colo2, ] ]

let s:p.visual.left = [ [ s:term_colo2, s:term_colo10, 'bold' ], [ s:term_colo16, s:term_colo2, ] ]
let s:p.visual.right = [ [ s:term_colo2, s:term_colo10, ], [ s:term_colo10, s:term_colo2, ], [ s:term_colo16, s:term_colo2, ] ]

"		middle section
let s:p.normal.middle = [ [ s:term_colo16, s:term_colo2 ] ]
let s:p.inactive.middle = s:p.normal.middle
let s:p.insert.middle = s:p.normal.middle
let s:p.replace.middle = s:p.normal.middle

let s:p.tabline.left = [ s:p.normal.left[1] ]
let s:p.tabline.tabsel = [ s:p.normal.left[0] ]
let s:p.tabline.middle = s:p.normal.middle
let s:p.tabline.right = [ s:p.normal.left[1] ]
let s:p.normal.error = [ [ '#292c33', '#e06c75', s:term_colo1, s:term_colo12 ] ]
let s:p.normal.warning = [ [ '#292c33', '#e5c07b', s:term_colo1, s:term_colo17 ] ]

let g:lightline#colorscheme#grvbx#palette = lightline#colorscheme#fill(s:p)
