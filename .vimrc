filetype plugin indent on        " filetype検出を有効にし，pluginとindentファイルのロードを行う

set nocompatible                 " vi互換モードをOffに
set noswapfile                   " スワップファイルは使わない(ときどき面倒な警告が出るだけで役に立ったことがない)
set ruler                        " カーソルが何行目の何列目に置かれているかを表示する
set cmdheight=2                  " コマンドラインに使われる画面上の行数
set laststatus=2                 " エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set statusline=%<%f\%m%r%h%w
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).']'}
set statusline+=%=%l,%c%V%8P
set title                        " ウインドウのタイトルバーにファイルのパス情報等を表示する
set wildmenu                     " コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set showcmd                      " 入力中のコマンドを表示する
set smartcase                    " 小文字のみで検索したときに大文字小文字を無視する
set hlsearch                     " 検索結果をハイライト表示する
set background=dark              " 暗い背景色に合わせた配色にする
set noexpandtab                  " タブ入力を複数の空白入力に置き換えない
set incsearch                    " 検索ワードの最初の文字を入力した時点で検索を開始する
set hidden                       " 保存されていないファイルがあるときでも別のファイルを開けるようにする
set list                         " 不可視文字を表示す
"set listchars=tab:>\ ,extends:<  " タブと行の続きを可視化する
set listchars=tab:-\ ,extends:<  " タブと行の続きを可視化する
set number                       " 行番号を表示する
set showmatch                    " 対応する括弧やブレースを表示する
set matchtime=1                  " 表示する時間を0.1秒にする
set autoindent                   " 改行時に前の行のインデントを継続する
set smartindent                  " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set tabstop=4                    " タブ文字の表示幅
set shiftwidth=4                 " Vimが挿入するインデントの幅
set smarttab                     " 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set whichwrap=b,s,h,l,<,>,[,]    " カーソルを行頭、行末で止まらないようにする
set backspace=2                  " backspaceを有効にする

syntax on                        " 構文毎に文字色を変化させる
autocmd ColorScheme * highlight Normal ctermbg=none    " 背景色(bg)をターミナルと変化させない
autocmd ColorScheme * highlight LineNr ctermbg=none
autocmd ColorScheme * highlight NonText ctermbg=none
autocmd Colorscheme * highlight SpecialKey ctermbg=NONE
colorscheme jellybeans           " カラースキームの設定
let fortran_free_source=1        "Fortran設定
let fortran_fold=1
au! BufRead,BufNewFile *.f90 let b:fortran_do_enddo=1

autocmd BufWritePost *.{tex} :!make
                                " texファイルとpdfファイルの内容を同期する
autocmd BufRead,BufNewFile *.sage set filetype=python
                                " sageファイルにpythonのシンタックスハイライトを適用

let g:rustfmt_autosave = 1      " rustファイルの保存時に:RustFmtを実行
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }                       " lightlineのカラースキーム設定
set noshowmode                  " 挿入モード中，-- INSERT --を表示しない
