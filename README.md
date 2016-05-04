# vim-c-ide
usage: 
git clone https://github.com/cloudswenable/vim-c-ide.git

step 1:

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -s vim-c-ide/.vimrc .vimrc
ln -s vim-c-ide/.ycm_extra_conf.py .ycm_extra_conf.py

step 2:

vim .vimrc

type ":BundleInstall"


step 3:

goto .vim/bundle/YouCompleteMe and run ./install.py --clang-complete
