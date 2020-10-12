" =============================================================================
" Filename: autoload/lightline/colorscheme/whwg.vim
" =============================================================================

let s:colo1 = ["#000000", 16] "blk
let s:colo2 = ["#262626", 235] "blk2
let s:colo3 = ["#0087af", 31] "blue
let s:colo4 = ["#00d7af", 43] "cyan
let s:colo5 = ["#00ff87", 48] "grn 48,70,35,107
let s:colo6 = ["#87af00", 106] "grnyellow
let s:colo7 = ["#3a3a3a", 237] "grey
let s:colo8 = ["#585858", 240] "grey2
let s:colo9 = ["#767676", 243] "grey3
let s:colo10 = ["#af875f", 137] "orng 209,166,137
let s:colo11 = ["#5f005f", 53] "purple
let s:colo12 = ["#d70000", 160] "red 88
let s:colo13 = ["#5f0000", 52] "drkred2
let s:colo14 = ["#008080", 6] "teal
let s:colo15 = ["#ffffff", 15] "wht
let s:colo16 = ["#bcbcbc", 250] "ltgrey 231
let s:colo17 = ["#ffff87", 228] "yellow
"  special fg/font colors
let s:spec1 = ["#005f00", 22] "drkgrn
let s:spec2 = ["#0000ff", 21] "drkblue
let s:spec3 = ["#080808", 232] "drkgrey

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:colo1, s:colo5 ], [ s:colo15, s:colo2 ] ]
let s:p.normal.middle = [ [ s:colo15, s:colo2 ] ]
let s:p.normal.right = [ [ s:colo1, s:colo5 ], [ s:colo15, s:colo2 ], [ s:colo15, s:colo2 ] ]
let s:p.normal.warning = [ [ s:colo1, s:colo17 ] ]
let s:p.normal.error = [ [ s:colo1, s:colo12 ] ]

let s:p.inactive.left = [ [s:colo15, s:colo2 ] ] 
let s:p.inactive.middle = [ [ s:colo15, s:colo9 ] ]
let s:p.inactive.right = [ [ s:colo15, s:colo7 ], [ s:colo15, s:colo7 ] ]

let s:p.insert.left = [ [ s:colo1, s:colo3 ], [ s:colo15, s:colo2 ] ]
let s:p.insert.middle = [ [ s:colo15, s:colo2 ] ]
let s:p.insert.right = [ [ s:colo1, s:colo3 ], [ s:colo15, s:colo2 ], [ s:colo15, s:colo2 ] ]

let s:p.visual.left = [ [ s:colo13, s:colo10 ], [ s:colo15, s:colo2 ] ]
let s:p.visual.middle = [ [s:colo15, s:colo2] ]
let s:p.visual.right = [ [ s:colo2, s:colo10 ], [ s:colo15, s:colo2 ] ]

let s:p.replace.left = [ [ s:colo15, s:colo12 ], [ s:colo15, s:colo2 ] ]
let s:p.replace.middle = [ [s:p.normal.middle] ]
let s:p.replace.right = [ [ s:colo15, s:colo12 ], [ s:colo2, s:colo15 ] ]

let s:p.tabline.left = [ s:p.normal.left[1] ]
let s:p.tabline.middle = [ s:p.normal.middle ]
let s:p.tabline.right = [ s:p.normal.left[1] ]
let s:p.tabline.tabsel = [ s:p.normal.left[0] ]

let g:lightline#colorscheme#test#palette = lightline#colorscheme#fill(s:p)
