#!/bin/sh
BUILD_DIR="neovim"
TARGET_INSTALL="/usr/local/bin/nvim"

rm -rf ${BUILD_DIR}
git clone \
  --single-branch \
  --depth 1\
  https://github.com/neovim/neovim.git \
  ${BUILD_DIR}

export CC=clang-10
export CXX=clang++-10

make \
	-C ${BUILD_DIR} \
	CMAKE_BUILD_TYPE=Release
sudo make \
	-C ${BUILD_DIR} \
	install

sudo update-alternatives \
	--install /usr/bin/vi vi ${TARGET_INSTALL} 60
sudo update-alternatives \
	--config vi
sudo update-alternatives \
	--install /usr/bin/vim vim ${TARGET_INSTALL} 60
sudo update-alternatives \
	--config vim
sudo update-alternatives \
	--install /usr/bin/editor editor ${TARGET_INSTALL} 60
sudo update-alternatives \
	--config editor

curl -fLo \
	~/.local/share/nvim/site/autoload/plug.vim \
	--create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo python2 -m pip \
	install --upgrade \
		neovim
sudo python3 -m pip \
	install --upgrade \
		neovim

nvim --headless \
  +PlugInstall \
  +PlugUpdate \
  +PlugUpgrade \
  +CocInstall \
    coc-clangd \
    coc-cmake \
    coc-git \
    coc-json \
    coc-markdownlint \
    coc-python \
    coc-sh \
    coc-yaml \
  +CocUpdate \
  +qall

rm -rf ${BUILD_DIR}
