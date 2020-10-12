" =============================================================================
" Filename: autoload/lightline/colorscheme/whwg.vim
" =============================================================================
" extra colors- 22,34,49,83,100,106,118,184,232,214,#ABB2BF,#3E4452,#292c33, #e06c75

let s:term_colo1 = 16		"blk #000000 
let s:term_colo2 = 235		"blk2 #262626
let s:term_colo3 = 31		"blue #0087af,#61afef
let s:term_colo4 = 43		"cyan #00d7af
let s:term_colo5 = 48		"grn #00ff87
let s:term_colo6 = 106		"grn2 #87af00 
let s:term_colo7 = 237		"grey #3a3a3a
let s:term_colo8 = 240		"grey2 #585858
let s:term_colo9 = 243		"grey3 #767676
let s:term_colo10 = 137		"orange #af875f, 209 166 137
let s:term_colo11 = 53		"purple #5f005f
let s:term_colo12 = 167		"red #d70000, 88 
let s:term_colo13 = 52		"dkred2 #5f0000
let s:term_colo14 = 6		"teal #008080
let s:term_colo15 = 15		"wht #ffffff
let s:term_colo16 = 250		"wht2 #bcbcbc, 231
let s:term_colo17 = 228		"yellow #ffff87


"		special fg/fonts color
let s:term_spec = 22		"drk-grn #005f00
let s:term_spec2 = 21		"dkblue #0000ff
let s:term_spec3 = 232		"dkgrey #080808

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ s:term_colo2, s:term_colo6, 'bold'], [ s:term_colo15, s:term_colo2, ] ]
let s:p.normal.middle = [ [ s:term_colo15, s:term_colo2 ] ]
let s:p.normal.right = [ [ s:term_colo2, s:term_colo6, 'bold' ], [ s:term_colo15, s:term_colo2, ], [ s:term_colo15, s:term_colo2, ] ]

let s:p.inactive.middle = [ [ s:term_colo15, s:term_colo9 ] ]
let s:p.inactive.right = [ [ s:term_colo15, s:term_colo7 ], [ s:term_colo15, s:term_colo7 ] ]
"let s:p.inactive.left = s:p.inactive.right[1:]  "repeat line above

let s:p.insert.left = [ [ s:term_colo1, s:term_colo3, 'bold'], [ s:term_colo15, s:term_colo2, ] ]
let s:p.insert.middle = [ [ s:term_colo15, s:term_colo2 ] ]
let s:p.insert.right = [ [ s:term_colo1, s:term_colo3, 'bold' ], [ s:term_colo15, s:term_colo2, ], [ s:term_colo15, s:term_colo2, ] ]

let s:p.visual.left = [ [ s:term_colo13, s:term_colo10, 'bold' ], [ s:term_colo15, s:term_colo2, ] ]
let s:p.visual.right = [ [ s:term_colo2, s:term_colo10, 'bold' ], s:p.normal.right[1], [ s:term_colo15, s:term_colo2, ] ]

let s:p.replace.left = [ [ s:term_colo1, s:term_colo12, 'bold' ], [ s:term_colo15, s:term_colo2, ] ]
let s:p.replace.middle = s:p.normal.middle
let s:p.replace.right = [ [ s:term_colo15, s:term_colo12, 'bold' ], s:p.normal.right[1], [ s:term_colo2, s:term_colo15, ] ]

let s:p.tabline.left = [ s:p.normal.left[1] ]
let s:p.tabline.tabsel = [ s:p.normal.left[0] ]
let s:p.tabline.middle = s:p.normal.middle
let s:p.tabline.right = [ s:p.normal.left[1] ]
let s:p.normal.error = [ [ s:term_colo1, s:term_colo12 ] ]
let s:p.normal.warning = [ [ s:term_colo1, s:term_colo17 ] ]

let g:lightline#colorscheme#whwg#palette = lightline#colorscheme#fill(s:p)
