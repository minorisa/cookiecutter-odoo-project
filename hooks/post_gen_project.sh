#!/bin/bash

git clone git@git.desarrollo.minorisa.net:odoo/addons_pro -b 11.0 addons_pro
virtualenv -p python3 .
source bin/activate
pip install --upgrade pip
pip install -r requirements.txt
pip install -r OCA-requirements.txt
mkdir addons_{{project_name}}
cd addons_{{project_name}}
git init
git remote add git@git.desarrollo.minorisa.net:odoo/addons_{{project_name}}.git
cd ..

