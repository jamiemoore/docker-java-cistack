#!/bin/bash

git config --global user.name "Dev Box"
git config --global user.email root@localhost


mkdir /src/git
cd /src/git
rm -rf javaapp
git clone http://root:jamiejamie@gitlab/root/javaapp.git 
rsync -avz /src/app/* /src/git/javaapp
cd javaapp
git add .
git commit -m "Automated commit"
git push -u origin master
