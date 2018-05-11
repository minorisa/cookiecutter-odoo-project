#!/bin/bash

PWD=`pwd`
ENV=${PWD}/env
export LC_ALL=C
# git clone git@git.desarrollo.minorisa.net:odoo/addons_pro -b 11.0 addons_pro
python3 -m venv $ENV
$ENV/bin/pip install --upgrade pip
$ENV/bin/pip install -r requirements.txt
$ENV/bin/pip install -r OCA-requirements.txt
# mkdir addons_{{ cookiecutter.project_name }}
# cd addons_{{ cookiecutter.project_name }}
# git init
# git remote add origin git@git.desarrollo.minorisa.net:odoo/addons_{{ cookiecutter.project_name }}.git
# cd $PWD

