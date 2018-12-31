#!/bin/bash
sudo apt-get update

# Install Old Friends
sudo apt-get install --no-install-recommends \
    dc \
    bc \
    -y

# Install Editor
sudo apt-get install --no-install-recommends \
    vim \
    -y

# Install Dev Tools
sudo apt-get install --no-install-recommends \
    git \
    gdb \
    libgtest-dev \
    cmake \
    g++ \
    valgrind \
    libpthread-stubs0-dev \
    build-essential \
    python3-dev \
    graphviz \
    -y

# Install Rust
curl -sf -L https://static.rust-lang.org/rustup.sh | sh -s -- -y

# Install Pandoc and Tex
sudo apt-get install --no-install-recommends \
    pandoc \
    texlive-latex-base \
    lmodern \
    -y

# Setup bash profile
cp /vagrant/templates/.bash_profile ~/.bash_profile
touch ~/.hushlogin
source ~/.bash_profile

# Install vim and YouCompleteMe rust semantic autocompletion
mkdir -p ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp /vagrant/templates/.vimrc ~/.vimrc
vim -c 'PluginInstall' -c 'qa!'
cd ~/.vim/bundle/YouCompleteMe/
python3 install.py --clang-completer --rust-completer
rustup component add rust-src
rustup component add rustfmt

# Upgrade any out of date packages
# sudo apt-get upgrade -y