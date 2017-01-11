# vim-config

### To install it in linux, do:
- remove your ~/.vim if it exists
- `$git clone https://github.com/hritt/vim-config.git ~/.vim`, it should be clone to ~/.vim
- `$ln ~/.vim/vimrc ~/.vimrc`
- install ctags `$sudo apt-get install ctags`

### Introduce:
- **doc** - chinese help document for Vim version 7.3, remember to add "set helplang=cn". and some plugins help documents
- **colors** - some colors scheme
- **plugin**
	* taglist: taglist.vim, taglist.txt
	* bufexplorer: bufexplorer.vim, bufexplorer.txt
	* winmanager: winmanager.vim, winfileexplorer.vim, wintagexplorer.vim, winmanager.txt. If you want to show tagexplorer, you should have taglist first.
	* a
	* DoxygenToolkit
	* tetris
- **autoload**
	* [plug](https://github.com/junegunn/vim-plug)<!-- use plug instead of bundle -->
- **plugged**
	* [ctrlp.vim](https://github.com/kien/ctrlp.vim)
	* [nerdtree](https://github.com/scrooloose/nerdtree)
	* [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
	* [syntastic](https://github.com/scrooloose/syntastic)
	* vim-addon-mw-utils: needed by vim-snipmate
	* tlib_vim: needed by vim-snipmate
	* [vim-snipmate](https://github.com/garbas/vim-snipmate): need [snippets](http://gthub.com/honza/vim-snippets/tree/master/snippets)
<!--* [vim-airline](https://github.com/vim-airline/vim-airline): nice looking using [powerline-fonts](https://github.com/powerline/fonts/) -->
	* [incsearch.vim](https://github.com/haya14busa/incsearch.vim)
	* [incsearch-fuzzy.vim](https://github.com/haya14busa/incsearch-fuzzy.vim)
- **snippets** - snippets files

