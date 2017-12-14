# Compiling VIM for huge file and non gui environment
# without gui, gnome or gtk
./configure --enable-luainterp=yes --with-luajit --enable-fail-if-missing --with-features=huge --enable-cscope --enable-fontset --enable-largefile \
--with-x --enable-multibyte --enable-fontset --enable-rubyinterp \
--enable-python3interp --enable-perlinterp \
--enable-pythoninterp --enable-mzschemeinterp \
--enable-tclinterp \
--disable-gui \
--with-mac-arch=intel

