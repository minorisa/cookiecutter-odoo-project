#!/bin/bash

PWD=`pwd`
ENV=${PWD}/env
git clone git@git.desarrollo.minorisa.net:odoo/addons_pro -b 11.0 addons_pro
python3 -m venv $ENV
$ENV/pip install --upgrade pip
$ENV/pip install -r requirements.txt
$ENV/pip install -r OCA-requirements.txt
mkdir addons_{{ cookiecutter.project_name }}
cd addons_{{ cookiecutter.project_name }}
git init
git remote add origin git@git.desarrollo.minorisa.net:odoo/addons_{{ cookiecutter.project_name }}.git
cd $PWD

