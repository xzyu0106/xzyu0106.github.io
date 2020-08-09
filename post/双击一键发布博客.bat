d:
cd \hugo\sites\myblog\
xcopy /s /i /y D:\hugo\sites\myblog\content\post_images D:\hugo\sites\myblog\content\post\post_images
TIMEOUT /T 1
hugo --theme=maupassant --baseUrl="https://simplifythewhale.com"
TIMEOUT /T 1
rd /s /q D:\hugo\sites\myblog\content\post\post_images
cd public
TIMEOUT /T 1
git config --global core.autocrlf false
TIMEOUT /T 1
git add .
TIMEOUT /T 1
git commit -m "commit myblog"
TIMEOUT /T 1
git remote add origin git@github.com:xzyu0106/xzyu0106.github.io.git
TIMEOUT /T 1
git push -u origin master
TIMEOUT /T 20
scp -r D:/hugo/sites/myblog/public/* root@121.41.229.169:/home/hugo
TIMEOUT /T 3