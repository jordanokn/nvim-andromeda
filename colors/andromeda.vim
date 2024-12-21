" andromeda.vim - Custom theme for Neovim
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "andromeda"

set background=dark

" Color palette
let s:black = "#1e2025"
let s:bright_black = "#40434c"
let s:red = "#f82871"
let s:bright_red = "#8e0f3a"
let s:green = "#96df71"
let s:bright_green = "#457c38"
let s:yellow = "#fee56d"
let s:bright_yellow = "#958334"
let s:blue = "#10a793"
let s:bright_blue = "#1a5148"
let s:magenta = "#c74cec"
let s:bright_magenta = "#682681"
let s:cyan = "#08e7c5"
let s:bright_cyan = "#008169"
let s:white = "#f7f7f8"
let s:bright_white = "#f7f7f8"
let s:bg = "#1e2025"
let s:fg = "#f7f7f8"
let s:selection = "#21242b"
let s:comment = "#6b6b73"
let s:accent = "#10a793"
let s:orange = "#f29c16"

" Helper function
function! s:hi(group, fg, bg, attr)
    if !empty(a:fg)
        exec "hi " . a:group . " guifg=" . a:fg
    endif
    if !empty(a:bg)
        exec "hi " . a:group . " guibg=" . a:bg
    endif
    if !empty(a:attr)
        exec "hi " . a:group . " gui=" . a:attr
    endif
endfun

" Editor colors
call s:hi("Normal", s:fg, s:bg, "")
call s:hi("LineNr", s:comment, "", "")
call s:hi("CursorLine", "", s:selection, "")
call s:hi("CursorLineNr", s:fg, "", "")
call s:hi("CursorColumn", "", s:selection, "")
call s:hi("ColorColumn", "", s:selection, "")
call s:hi("SignColumn", s:fg, s:bg, "")
call s:hi("VertSplit", s:selection, s:bg, "")
call s:hi("TabLine", s:comment, s:selection, "")
call s:hi("TabLineFill", "", s:selection, "")
call s:hi("TabLineSel", s:fg, s:bg, "")
call s:hi("StatusLine", s:fg, s:selection, "")
call s:hi("StatusLineNC", s:comment, s:selection, "")
call s:hi("Search", s:bg, s:yellow, "")
call s:hi("IncSearch", s:bg, s:yellow, "")
call s:hi("Visual", "", s:selection, "")
call s:hi("Folded", s:comment, s:bg, "")
call s:hi("FoldColumn", s:comment, s:bg, "")
call s:hi("Pmenu", s:fg, s:selection, "")
call s:hi("PmenuSel", s:bg, s:accent, "")
call s:hi("PmenuSbar", "", s:selection, "")
call s:hi("PmenuThumb", "", s:comment, "")
call s:hi("Directory", s:blue, "", "")
call s:hi("NonText", s:comment, "", "")
call s:hi("SpecialKey", s:comment, "", "")

" Syntax highlighting
call s:hi("Comment", s:comment, "", "italic")
call s:hi("Constant", s:green, "", "")
call s:hi("String", s:orange, "", "")
call s:hi("Character", s:orange, "", "")
call s:hi("Number", s:green, "", "")
call s:hi("Boolean", s:green, "", "")
call s:hi("Float", s:green, "", "")
call s:hi("Identifier", s:green, "", "")
call s:hi("Function", s:yellow, "", "")
call s:hi("Statement", s:blue, "", "")
call s:hi("Conditional", s:blue, "", "")
call s:hi("Repeat", s:blue, "", "")
call s:hi("Label", s:blue, "", "")
call s:hi("Operator", s:cyan, "", "")
call s:hi("Keyword", s:blue, "", "")
call s:hi("Exception", s:blue, "", "")
call s:hi("PreProc", s:cyan, "", "")
call s:hi("Include", s:blue, "", "")
call s:hi("Define", s:blue, "", "")
call s:hi("Macro", s:blue, "", "")
call s:hi("PreCondit", s:cyan, "", "")
call s:hi("Type", s:yellow, "", "")
call s:hi("StorageClass", s:yellow, "", "")
call s:hi("Structure", s:yellow, "", "")
call s:hi("Typedef", s:yellow, "", "")
call s:hi("Special", s:blue, "", "")
call s:hi("SpecialChar", s:bright_green, "", "")
call s:hi("Tag", s:blue, "", "")
call s:hi("Delimiter", s:fg, "", "")
call s:hi("SpecialComment", s:comment, "", "")
call s:hi("Debug", s:blue, "", "")
call s:hi("Underlined", s:blue, "", "underline")
call s:hi("Error", s:blue, s:bg, "")
call s:hi("Todo", s:yellow, s:bg, "")

" Treesitter groups
call s:hi("@function.call", s:yellow, "", "")           " Function calls
call s:hi("@method", s:yellow, "", "")                  " Method definitions
call s:hi("@method.call", s:yellow, "", "")             " Method calls
call s:hi("@field", s:green, "", "")                    " Object fields/properties
call s:hi("@property", s:green, "", "")                 " Object properties
call s:hi("@variable.builtin", s:green, "", "")         " Built-in variables (self, this, etc)
call s:hi("@constant.builtin", s:green, "", "")         " Built-in constants (True, False, None)
call s:hi("@constructor", s:yellow, "", "")             " Constructor calls

" Git highlighting
call s:hi("gitcommitComment", s:comment, "", "")
call s:hi("gitcommitUntracked", s:comment, "", "")
call s:hi("gitcommitDiscarded", s:comment, "", "")
call s:hi("gitcommitSelected", s:comment, "", "")
call s:hi("gitcommitUnmerged", s:green, "", "")
call s:hi("gitcommitBranch", s:magenta, "", "")
call s:hi("gitcommitNoBranch", s:magenta, "", "")
call s:hi("gitcommitDiscardedType", s:red, "", "")
call s:hi("gitcommitSelectedType", s:green, "", "")
call s:hi("gitcommitUntrackedFile", s:cyan, "", "")
call s:hi("gitcommitDiscardedFile", s:red, "", "")
call s:hi("gitcommitSelectedFile", s:green, "", "")
call s:hi("gitcommitUnmergedFile", s:yellow, "", "")
call s:hi("gitcommitFile", s:fg, "", "")

" Terminal colors
let g:terminal_color_0 = s:black
let g:terminal_color_1 = s:red
let g:terminal_color_2 = s:green
let g:terminal_color_3 = s:yellow
let g:terminal_color_4 = s:blue
let g:terminal_color_5 = s:magenta
let g:terminal_color_6 = s:cyan
let g:terminal_color_7 = s:white
let g:terminal_color_8 = s:bright_black
let g:terminal_color_9 = s:bright_red
let g:terminal_color_10 = s:bright_green
let g:terminal_color_11 = s:bright_yellow
let g:terminal_color_12 = s:bright_blue
let g:terminal_color_13 = s:bright_magenta
let g:terminal_color_14 = s:bright_cyan
let g:terminal_color_15 = s:bright_white
