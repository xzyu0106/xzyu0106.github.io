d:
cd \hugo\sites\myblog\
xcopy /s /i /y D:\hugo\sites\myblog\content\post_images D:\hugo\sites\myblog\content\post\post_images
TIMEOUT /T 3
hugo --theme=maupassant --baseUrl="https://simplifythewhale.com" --buildDrafts
TIMEOUT /T 3
rd /s /q D:\hugo\sites\myblog\content\post\post_images
cd public
TIMEOUT /T 5
git config --global core.autocrlf false
TIMEOUT /T 3
git add .
TIMEOUT /T 3
git commit -m "commit myblog"
TIMEOUT /T 3
git remote add origin git@github.com:xzyu0106/xzyu0106.github.io.git
TIMEOUT /T 4
git push -u origin master
TIMEOUT /T 10
scp -r D:/hugo/sites/myblog/public/* root@121.41.229.169:/home/hugo
TIMEOUT /T 3