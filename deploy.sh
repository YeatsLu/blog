#!/bin/sh
hexo generate
cd blog
git pull origin gh-pages
git checkout gh-pages
cd ../
cp -r public/* blog
cd blog
git add .
git commit -m 'm'
git push origin gh-pages
# if there is no git resposity of blog, pls git clone it