#!/usr/bin/env bash

sudo apt-get install python3-dev libffi-dev build-essential virtualenvwrapper
virtualenv --python=python3.5 angr_env
source ./angr_env/bin/activate
pip install pwntools==4.0.1
path=`pwd`
echo "alias angr_env='source $path/angr_env/bin/activate'" > ~/.bashrc
source ~/.bashrc
pip install angr==8.19.10.30
echo "has install angr in virtual python env"
echo "you can use 'angr_env' to switch virtual env"
deactivate