cd $HOME

# dependencies to build vim
sudo apt-get install -y git curl zsh automake pkg-config libpcre3-dev zlib1g-dev liblzma-dev byobu tmux ruby-all-dev luajit libluajit-5.1-dev libperl-dev python3.5-dev libpython3.5-dev ncurses-dev racket
sudo apt-get build-dep -y vim

# vim
cd $HOME
mkdir src
cd src
git clone https://github.com/vim/vim.git
cd vim
# Compiling VIM for huge file and non gui environment
# without gui, gnome or gtk
./configure \
--enable-luainterp=yes --with-luajit \
--enable-fail-if-missing --with-features=huge --enable-cscope --enable-fontset --enable-largefile \
--with-x --enable-multibyte --enable-fontset --enable-rubyinterp \
--enable-python3interp --enable-perlinterp \
--enable-pythoninterp --enable-mzschemeinterp \
--enable-tclinterp \
--disable-gui \
--with-mac-arch=intel

make
sudo make install


# gnu-parallel
(wget -O - pi.dk/3 || curl pi.dk/3/ || fetch -o - http://pi.dk/3) | bash


# install ranger
git clone https://github.com/ranger/ranger.git
cd ranger
sudo make install


# install universal ctags
cd $HOME/src
git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh
./configure
make
sudo make install


# install the silver searcher
cd $HOME/src
git clone https://github.com/ggreer/the_silver_searcher.git
cd the_silver_searcher
./build.sh
sudo make install

#Setup VIM
sudo apt install stow
stow $HOME/dev-workflow/.vim

# setup SPF13_VimPlug
curl http://bit.ly/spf13_vimplug -L -o -|sh
