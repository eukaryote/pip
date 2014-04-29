#!/bin/bash

set -e
set -x

case $TOXENV in
    py34)
        sudo add-apt-repository -y ppa:fkrull/deadsnakes
        sudo apt-get update
        sudo apt-get install python3.4
        ;;
    pypy)
        sudo add-apt-repository -y ppa:pypy/ppa
        sudo apt-get -y update
        sudo apt-get -y install pypy
        ;;
esac

git config --global user.email "python-virtualenv@googlegroups.com"
git config --global user.name "Pip"

pip install --upgrade setuptools
pip install tox