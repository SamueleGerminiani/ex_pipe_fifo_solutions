let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <Nul> <C-Space>
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
imap <M-Down> <Plug>(copilot-accept-line)
imap <M-Right> <Plug>(copilot-accept-word)
imap <M-Bslash> <Plug>(copilot-suggest)
imap <M-[> <Plug>(copilot-previous)
imap <M-]> <Plug>(copilot-next)
imap <Plug>(copilot-suggest) <Cmd>call copilot#Suggest()
imap <Plug>(copilot-previous) <Cmd>call copilot#Previous()
imap <Plug>(copilot-next) <Cmd>call copilot#Next()
imap <Plug>(copilot-dismiss) <Cmd>call copilot#Dismiss()
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
inoremap <silent> <C-L> =UltiSnips#ExpandSnippet()
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
map! <D-v> *
snoremap <silent>  "_c
nnoremap  h
nnoremap <NL> j
nnoremap  k
xnoremap <silent>  :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent>  :call UltiSnips#ExpandSnippet()
nnoremap  l
nnoremap  G
snoremap  "_c
map [24~ <F12>
map [23~ <F11>
map [20~ <F9>
map [19~ <F8>
map [18~ <F7>
map [17~ <F6>
map [15~ <F5>
map [13~ <F3>
nnoremap  :tselect 
imap ¬ <Plug>(copilot-suggest)
imap ˚ <Plug>(copilot-previous)
nnoremap \d :YcmShowDetailedDiagnostic
map \\ <Plug>(easymotion-prefix)
imap ∆ <Plug>(copilot-next)
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nmap s <Plug>(easymotion-s)
nnoremap <silent> <Plug>(YCMFindSymbolInDocument) :call youcompleteme#finder#FindSymbol( 'document' )
nnoremap <silent> <Plug>(YCMFindSymbolInWorkspace) :call youcompleteme#finder#FindSymbol( 'workspace' )
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
map <silent> <Plug>(easymotion-prefix)N <Plug>(easymotion-N)
map <silent> <Plug>(easymotion-prefix)n <Plug>(easymotion-n)
map <silent> <Plug>(easymotion-prefix)k <Plug>(easymotion-k)
map <silent> <Plug>(easymotion-prefix)j <Plug>(easymotion-j)
map <silent> <Plug>(easymotion-prefix)gE <Plug>(easymotion-gE)
map <silent> <Plug>(easymotion-prefix)ge <Plug>(easymotion-ge)
map <silent> <Plug>(easymotion-prefix)E <Plug>(easymotion-E)
map <silent> <Plug>(easymotion-prefix)e <Plug>(easymotion-e)
map <silent> <Plug>(easymotion-prefix)B <Plug>(easymotion-B)
map <silent> <Plug>(easymotion-prefix)b <Plug>(easymotion-b)
map <silent> <Plug>(easymotion-prefix)W <Plug>(easymotion-W)
map <silent> <Plug>(easymotion-prefix)w <Plug>(easymotion-w)
map <silent> <Plug>(easymotion-prefix)T <Plug>(easymotion-T)
map <silent> <Plug>(easymotion-prefix)t <Plug>(easymotion-t)
map <silent> <Plug>(easymotion-prefix)F <Plug>(easymotion-F)
map <silent> <Plug>(easymotion-prefix)f <Plug>(easymotion-f)
xnoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(1)
nnoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
snoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
onoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
noremap <silent> <Plug>(easymotion-dotrepeat) :call EasyMotion#DotRepeat()
xnoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(1)
nnoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
snoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
onoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
xnoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(1,1)
nnoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
snoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
onoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
xnoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(1,0)
nnoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
snoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
onoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
xnoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(1,0)
nnoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
snoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
onoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
xnoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(1,0)
nnoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
snoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
onoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
xnoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(1,2)
nnoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
snoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
onoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
xnoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(1,2)
nnoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
snoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
onoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
xnoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(1,1)
nnoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
snoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
onoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
xnoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(1,1)
nnoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
snoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
onoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
xnoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(1,0)
nnoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
snoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
onoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
xnoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(1,1)
nnoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
snoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
onoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
xnoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(1,2)
nnoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
snoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
onoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
xnoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(1,2)
nnoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
snoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
onoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
xnoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(1,0,1)
nnoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
snoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
onoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
xnoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(1,0,0)
nnoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
snoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
onoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
xnoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(1,2,0)
nnoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
snoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
onoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
xnoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(1,1,1)
nnoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
snoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
onoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
xnoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(1,1,0)
nnoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
snoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
onoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
xnoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(1,0)
nnoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
snoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
onoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
xnoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(1,1)
nnoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
snoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
onoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
xnoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(1,0)
nnoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
snoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
onoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
xnoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(1,1)
nnoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
snoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
onoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
xnoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(1,0)
nnoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
snoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
onoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
xnoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(1,2)
nnoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
snoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
onoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
xnoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(1,2)
nnoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
snoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
onoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
xnoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(1,2)
nnoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
snoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
onoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
xnoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(1,1)
nnoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
snoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
onoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(1,1)
nnoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
snoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
onoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
xnoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(1,0)
nnoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
snoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
onoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
xnoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(1,2)
nnoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
snoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
onoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(1,0)
nnoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
snoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
onoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
xnoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(1,1)
nnoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
snoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
onoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
xnoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(1,0)
nnoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
snoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
onoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
xnoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(1,2)
nnoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
snoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
onoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(1,0)
nnoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
snoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
onoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
xnoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(1,1)
nnoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
snoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
onoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(1,1)
nnoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
snoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
onoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(1,2)
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
snoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
onoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
xnoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(1,0)
nnoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
snoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
onoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
xnoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(1,2)
nnoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
snoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
onoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(1,2)
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
snoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
onoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
xnoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(1,1)
nnoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
snoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
onoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
xnoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(1,0)
nnoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
snoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
onoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
xnoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(1,2)
nnoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
snoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
onoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
xnoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(1,1)
nnoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
snoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
onoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
nnoremap <silent> <Plug>(easymotion-overwin-w) :call EasyMotion#overwin#w()
nnoremap <silent> <Plug>(easymotion-overwin-line) :call EasyMotion#overwin#line()
nnoremap <silent> <Plug>(easymotion-overwin-f2) :call EasyMotion#OverwinF(2)
nnoremap <silent> <Plug>(easymotion-overwin-f) :call EasyMotion#OverwinF(1)
xnoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
snoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
onoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
xnoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,1,0)
nnoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
snoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
onoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
xnoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,1,0)
nnoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
snoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
onoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
xnoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,1,2)
nnoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
snoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
onoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
xnoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,1,0)
nnoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
snoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
onoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
xnoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,1,0)
nnoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
snoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
onoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
xnoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,1,0)
nnoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
snoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
onoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
xnoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,1,0)
nnoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
snoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
onoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
xnoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
xnoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,1,0)
nnoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
snoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
onoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
xnoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,1,1)
nnoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
snoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
onoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
xnoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,1,0)
nnoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
snoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
onoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
xnoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,1,0)
nnoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
snoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
onoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
xnoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
snoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
onoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
xnoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
snoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
onoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,1,0)
nnoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
snoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
onoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
xnoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,1,0)
nnoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
snoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
onoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
xnoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
xnoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,1,1)
nnoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
snoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
onoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
xnoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,1,1)
nnoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
snoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
onoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
xnoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
xnoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
snoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
onoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
xnoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,1,2)
nnoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
snoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
onoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
xnoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,1,1)
nnoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
snoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
onoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
xnoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,1,2)
nnoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
snoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
onoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
xnoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
snoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
onoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
xnoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,1,2)
nnoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
snoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
onoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
xnoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,1,1)
nnoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
snoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
onoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
xnoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,1,2)
nnoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
snoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
onoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
xnoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,1,1)
nnoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
snoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
onoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
xnoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
xnoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,1,1)
nnoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
snoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
onoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
xnoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
xnoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,1,1)
nnoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
snoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
onoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
xnoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,1,0)
nnoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
snoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
onoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
snoremap <C-R> "_c
snoremap <silent> <C-H> "_c
snoremap <silent> <Del> "_c
snoremap <silent> <BS> "_c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
xnoremap <silent> <C-L> :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> <C-L> :call UltiSnips#ExpandSnippet()
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
tnoremap <silent> <Plug>(fzf-normal) 
tnoremap <silent> <Plug>(fzf-insert) i
nnoremap <silent> <Plug>(fzf-normal) <Nop>
nnoremap <silent> <Plug>(fzf-insert) i
nnoremap <F11> "0p
nnoremap <F9> :FZF
nnoremap <F3> :ClangFormat 
nnoremap <C-Down> =
nnoremap <C-Up> _
nnoremap <C-Left> |
nnoremap <C-K> k
nnoremap <C-J> j
nnoremap <C-L> l
nnoremap <C-H> h
nnoremap <C-]> :tselect 
map <F8> :tabn
map <F7> :tabp
map <F6> :NERDTreeToggle
xmap <BS> "-d
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P
inoremap <silent>  =UltiSnips#ExpandSnippet()
inoremap ( ()<Left>
map ® :call TermDebugSendCommand('r')
inoremap [ []<Left>
map ‘ :call TermDebugSendCommand('c')
map “ :call TermDebugSendCommand('n')
map … :call TermDebugSendCommand('s')
map ∫ :Break
inoremap { {}<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
set completeopt=menuone
set cpoptions=aAceFsB
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set incsearch
set laststatus=2
set runtimepath=
set runtimepath+=~/.vim
set runtimepath+=~/.vim/pack/github/start/copilot.vim
set runtimepath+=~/.vim/bundle/Vundle.vim
set runtimepath+=~/.vim/bundle/nerdtree
set runtimepath+=~/.vim/bundle/fzf
set runtimepath+=~/.vim/bundle/fzf.vim
set runtimepath+=~/.vim/bundle/vim-clang-format
set runtimepath+=~/.vim/bundle/ultisnips
set runtimepath+=~/.vim/bundle/vim-easymotion
set runtimepath+=~/.vim/bundle/copilot.vim
set runtimepath+=~/.vim/bundle/vim-autotag
set runtimepath+=~/.vim/bundle/vim-snippets
set runtimepath+=~/.vim/bundle/YouCompleteMe
set runtimepath+=/opt/homebrew/share/vim/vimfiles
set runtimepath+=/opt/homebrew/share/vim/vim90
set runtimepath+=/opt/homebrew/share/vim/vimfiles/after
set runtimepath+=~/.vim/after
set runtimepath+=~/.vim/bundle/Vundle.vim
set runtimepath+=~/.vim/bundle/Vundle.vim/after
set runtimepath+=~/.vim/bundle/nerdtree/after
set runtimepath+=~/.vim/bundle/fzf/after
set runtimepath+=~/.vim/bundle/fzf.vim/after
set runtimepath+=~/.vim/bundle/vim-clang-format/after
set runtimepath+=~/.vim/bundle/ultisnips/after
set runtimepath+=~/.vim/bundle/vim-easymotion/after
set runtimepath+=~/.vim/bundle/copilot.vim/after
set runtimepath+=~/.vim/bundle/vim-autotag/after
set runtimepath+=~/.vim/bundle/vim-snippets/after
set runtimepath+=~/.vim/bundle/YouCompleteMe/after
set scrolloff=8
set shiftwidth=2
set shortmess=filnxtToOSc
set statusline=%F%1*%=%5l%*%2*/%L%*
set tabstop=4
set window=39
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/SOLAB\ -\ NEW/6\ Lab\ Interprocess\ communication\ (IPC)\ -\ Part\ 3\ -\ PIPE\ and\ FIFO/Solutions/pipe/ese_1
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +29 src/producer.c
badd +0 src/consumer.c
badd +28 src/main.c
argglobal
%argdel
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit src/consumer.c
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 36 + 20) / 40)
exe 'vert 1resize ' . ((&columns * 31 + 72) / 145)
exe '2resize ' . ((&lines * 36 + 20) / 40)
exe 'vert 2resize ' . ((&columns * 35 + 72) / 145)
exe '3resize ' . ((&lines * 36 + 20) / 40)
exe 'vert 3resize ' . ((&columns * 67 + 72) / 145)
argglobal
enew
file NERD_tree_1
balt src/producer.c
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <silent> <NL> :call nerdtree#ui_glue#invokeKeyMap("<C-j>")
nnoremap <buffer> <silent>  :call nerdtree#ui_glue#invokeKeyMap("<C-k>")
nnoremap <buffer> <silent>  :call nerdtree#ui_glue#invokeKeyMap(g:NERDTreeMapActivateNode)
nnoremap <buffer> <silent> ? :call nerdtree#ui_glue#invokeKeyMap("?")
nnoremap <buffer> <silent> A :call nerdtree#ui_glue#invokeKeyMap("A")
nnoremap <buffer> <silent> B :call nerdtree#ui_glue#invokeKeyMap("B")
nnoremap <buffer> <silent> CD :call nerdtree#ui_glue#invokeKeyMap("CD")
nnoremap <buffer> <silent> C :call nerdtree#ui_glue#invokeKeyMap("C")
nnoremap <buffer> <silent> D :call nerdtree#ui_glue#invokeKeyMap("D")
nnoremap <buffer> <silent> F :call nerdtree#ui_glue#invokeKeyMap("F")
nnoremap <buffer> <silent> I :call nerdtree#ui_glue#invokeKeyMap("I")
nnoremap <buffer> <silent> J :call nerdtree#ui_glue#invokeKeyMap("J")
nnoremap <buffer> <silent> K :call nerdtree#ui_glue#invokeKeyMap("K")
nnoremap <buffer> <silent> O :call nerdtree#ui_glue#invokeKeyMap("O")
nnoremap <buffer> <silent> P :call nerdtree#ui_glue#invokeKeyMap("P")
nnoremap <buffer> <silent> R :call nerdtree#ui_glue#invokeKeyMap("R")
nnoremap <buffer> <silent> T :call nerdtree#ui_glue#invokeKeyMap("T")
nnoremap <buffer> <silent> U :call nerdtree#ui_glue#invokeKeyMap("U")
nnoremap <buffer> <silent> X :call nerdtree#ui_glue#invokeKeyMap("X")
nnoremap <buffer> <silent> cd :call nerdtree#ui_glue#invokeKeyMap("cd")
nnoremap <buffer> <silent> e :call nerdtree#ui_glue#invokeKeyMap("e")
nnoremap <buffer> <silent> f :call nerdtree#ui_glue#invokeKeyMap("f")
nnoremap <buffer> <silent> gi :call nerdtree#ui_glue#invokeKeyMap("gi")
nnoremap <buffer> <silent> gs :call nerdtree#ui_glue#invokeKeyMap("gs")
nnoremap <buffer> <silent> go :call nerdtree#ui_glue#invokeKeyMap("go")
nnoremap <buffer> <silent> i :call nerdtree#ui_glue#invokeKeyMap("i")
nnoremap <buffer> <silent> m :call nerdtree#ui_glue#invokeKeyMap("m")
nnoremap <buffer> <silent> o :call nerdtree#ui_glue#invokeKeyMap("o")
nnoremap <buffer> <silent> p :call nerdtree#ui_glue#invokeKeyMap("p")
nnoremap <buffer> <silent> q :call nerdtree#ui_glue#invokeKeyMap("q")
nnoremap <buffer> <silent> r :call nerdtree#ui_glue#invokeKeyMap("r")
nnoremap <buffer> <silent> s :call nerdtree#ui_glue#invokeKeyMap("s")
nnoremap <buffer> <silent> t :call nerdtree#ui_glue#invokeKeyMap("t")
nnoremap <buffer> <silent> u :call nerdtree#ui_glue#invokeKeyMap("u")
nnoremap <buffer> <silent> x :call nerdtree#ui_glue#invokeKeyMap("x")
nnoremap <buffer> <silent> <C-K> :call nerdtree#ui_glue#invokeKeyMap("<C-k>")
nnoremap <buffer> <silent> <C-J> :call nerdtree#ui_glue#invokeKeyMap("<C-j>")
nnoremap <buffer> <silent> <2-LeftMouse> :call nerdtree#ui_glue#invokeKeyMap("<2-LeftMouse>")
nnoremap <buffer> <silent> <LeftRelease> <LeftRelease>:call nerdtree#ui_glue#invokeKeyMap("<LeftRelease>")
nnoremap <buffer> <silent> <MiddleMouse> :call nerdtree#ui_glue#invokeKeyMap("<MiddleMouse>")
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'nerdtree'
setlocal filetype=nerdtree
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=bin,octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%{exists('b:NERDTree')?b:NERDTree.root.path.str():''}
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'nerdtree'
setlocal syntax=nerdtree
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal winfixwidth
setlocal nowrap
setlocal wrapmargin=0
wincmd w
argglobal
balt src/producer.c
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,:///,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*#\\s*include
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 27 - ((26 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 27
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("src/producer.c", ":p")) | buffer src/producer.c | else | edit src/producer.c | endif
balt src/producer.c
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,:///,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*#\\s*include
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 29 - ((19 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 29
normal! 038|
wincmd w
exe '1resize ' . ((&lines * 36 + 20) / 40)
exe 'vert 1resize ' . ((&columns * 31 + 72) / 145)
exe '2resize ' . ((&lines * 36 + 20) / 40)
exe 'vert 2resize ' . ((&columns * 35 + 72) / 145)
exe '3resize ' . ((&lines * 36 + 20) / 40)
exe 'vert 3resize ' . ((&columns * 67 + 72) / 145)
tabnext
edit src/consumer.c
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 72 + 72) / 145)
exe 'vert 2resize ' . ((&columns * 72 + 72) / 145)
argglobal
balt src/producer.c
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,:///,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*#\\s*include
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 33 - ((32 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 33
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("src/producer.c", ":p")) | buffer src/producer.c | else | edit src/producer.c | endif
balt src/consumer.c
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,:///,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*#\\s*include
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 34 - ((26 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 34
normal! 021|
lcd ~/Desktop/SOLAB\ -\ NEW/6\ Lab\ Interprocess\ communication\ (IPC)\ -\ Part\ 3\ -\ PIPE\ and\ FIFO/Solutions/pipe/ese_1
wincmd w
exe 'vert 1resize ' . ((&columns * 72 + 72) / 145)
exe 'vert 2resize ' . ((&columns * 72 + 72) / 145)
tabnext 2
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
set shortmess=filnxtToOSc
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
