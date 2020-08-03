#!/bin/bash

cd ..
cd ..

hugo --theme=maupassant --baseUrl="https://simplifythewhale.com" --buildDrafts

sleep 5

cd public

git config --global core.autocrlf false

sleep 2

git add .

sleep 5

git commit -m "commit myblog"

sleep 5

git remote add origin git@github.com:xzyu0106/xzyu0106.github.io.git

sleep 5

git push -u origin master

sleep 20

scp -r D:/hugo/sites/myblog/public/* root@121.41.229.169:/home/hugo

