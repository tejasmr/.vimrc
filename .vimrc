" enter the current millenium
set nocompatible
set tabstop=4
set shiftwidth=4
set showcmd

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

" COLOR SCHEME

colorscheme murphy

" FINDING FILES:

" search down into subfolders
" provides tab completion for all file-related tasks
set path+=**

" display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial search
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer

" TAG JUMPING
"
" create the 'tags' file 
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" AUTOCOMPLETE:

" the good stuff is documented in |ins-completion|

" HIGHLIGHTS:
" - ^x^n for JUST this file 
" - ^x^f for filenames (works with path trick)
" - ^x^] for tags only 
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list

" FILE BROWSER:

" Tweaks for browsing
let g:netrw_banner = 0 " disable annoying banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 "open splits to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings

" SNIPPETS:

" Read an empty HTML template and move cursor to title
" nnoremap ,html :-1read /Users/tezz/.vim/skeleton.html<CR>3jwf>a

" NOW WE CAN:
" - Take over the world!
"   (with much fewer keystrokes)

" FOLDING:

set foldmethod=marker

