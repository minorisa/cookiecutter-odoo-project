#!/bin/bash

PWD=`pwd`
echo $PWD
git clone git@git.desarrollo.minorisa.net:odoo/addons_pro -b 11.0 addons_pro
virtualenv -p python3 .
source bin/activate
pip install --upgrade pip
pip install -r requirements.txt
pip install -r OCA-requirements.txt
mkdir addons_{{cookiecutter.project_name}}
cd addons_{{cookiecutter.project_name}}
git init
git remote add origin git@git.desarrollo.minorisa.net:odoo/addons_{{cookiecutter.project_name}}.git
cd ..

