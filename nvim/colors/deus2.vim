" =============================================================================
" Filename: autoload/lightline/colorscheme/deus2.vim
" =============================================================================
" extra colors- 22,34,49,83,100,106,118,184,232,214,

let s:term_black = 232
let s:term_black2 = 235
let s:term_blue = 24
let s:term_blue2 = 27
let s:term_blue3 = 18
let s:term_teal = 6
let s:term_cyan2 = 118
let s:term_gold = 178
let s:term_green = 2
let s:term_green2 = 106
let s:term_green3 = 70
let s:term_grey = 237
let s:term_grey2 = 240
let s:term_grey3 = 243
let s:term_orange = 172
let s:term_purple = 53
let s:term_red = 88
let s:term_red2 = 52
let s:term_spec = 23
let s:term_spec2 = 59
let s:term_white = 15
let s:term_yellow = 228
let s:term_yellow2 = 220

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
"		Normal section			1st block															2nd block
let s:p.normal.left = [ [ '#292c33', '#87af00', s:term_black, s:term_green3, 'bold' ], [ '#98c379', '#292c33', s:term_green3, s:term_black2, 'bold' ] ]
let s:p.normal.right = [ [ '#292c33', '#87af00', s:term_black2, s:term_green3, 'bold' ], [ '#abb2bf', '#3e4452', s:term_white, s:term_grey3, 'bold' ], [ '#98c379', '#292c33', s:term_black2, s:term_white, 'bold' ] ]
"		Inactive
let s:p.inactive.right = [ [ '#ffffff', '#5f5f5f', s:term_white, s:term_grey ], [ '#abb2bf', '#3e4452', s:term_white, s:term_grey ] ]
let s:p.inactive.left = s:p.inactive.right[1:]
"		Insert
let s:p.insert.left = [ [ '#292c33', '#61afef', s:term_blue3, s:term_white, 'bold' ], [ '#61afef', '#292c33', s:term_white, s:term_black2 ] ]
let s:p.insert.right = [ [ '#292c33', '#61afef', s:term_white, s:term_blue ], [ '#ABB2BF', '#3E4452', s:term_white, s:term_grey3 ], [ '#61afef', '#292c33', s:term_black2, s:term_white ] ]
"		Replace	
let s:p.replace.left = [ [ '#292c33', '#e06c75', s:term_white, s:term_red, 'bold' ], [ '#e06c75', '#292c33', s:term_white, s:term_black2 ] ]
let s:p.replace.right = [ [ '#292c33', '#e06c75', s:term_white, s:term_red, 'bold' ], s:p.normal.right[1], [ '#e06c75', '#292c33', s:term_black2, s:term_white ] ]
"		Visual
let s:p.visual.left = [ [ '#292c33', '#c678dd', s:term_purple, s:term_gold, 'bold' ], [ '#c678dd', '#292c33', s:term_gold, s:term_black2 ] ]
let s:p.visual.right = [ [ '#292c33', '#c678dd', s:term_black2, s:term_gold, 'bold' ], s:p.normal.right[1], [ '#c678dd', '#292c33', s:term_black2, s:term_white ] ]
"		middle section
let s:p.normal.middle = [ [ '#abb2bf', '#292c33', s:term_white, s:term_grey ] ]
let s:p.inactive.middle = [ [ '#abb2bf', '#292c33', s:term_white, s:term_grey2 ] ]
let s:p.insert.middle = [ [ '#abb2bf', '#292c33', s:term_white, s:term_blue ] ]
let s:p.replace.middle = s:p.normal.middle
let s:p.tabline.left = [ s:p.normal.left[1] ]
let s:p.tabline.tabsel = [ s:p.normal.left[0] ]
let s:p.tabline.middle = s:p.normal.middle
let s:p.tabline.right = [ s:p.normal.left[1] ]
let s:p.normal.error = [ [ '#292c33', '#e06c75', s:term_black, s:term_red ] ]
let s:p.normal.warning = [ [ '#292c33', '#e5c07b', s:term_black, s:term_yellow ] ]

let g:lightline#colorscheme#deus2#palette = lightline#colorscheme#fill(s:p)
