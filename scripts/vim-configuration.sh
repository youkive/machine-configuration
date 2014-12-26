#!/bin/bash

echo "Start script de configuration vim"

# Test existence dossier .vim
if [ ! -d ~/.vim ] ; then
    mkdir ~/.vim
fi

# Creéation de l'arborescence
if [ ! -d ~/.vim/bundle ] ; then
    mkdir ~/.vim/bundle
fi

if [ ! -d ~/.vim/autoload ] ; then
    mkdir ~/.vim/autoload
fi

echo "SUCCESS création de l'arborescence pour plugin vim"

# Installation de pathogen pour vim
if [ ! -e ~/.vim/autoload/pathogen.vim ] ; then
    wget -O ~/.vim/autoload/pathogen.vim  https://tpo.pe/pathogen.vim
fi

# installation des bundles
if [ ! -d ~/.vim/bundle/nerdtree ] ; then
    git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
fi 

echo "SUCCESS configuration de vim"
