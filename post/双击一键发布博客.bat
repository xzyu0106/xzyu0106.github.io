d:
cd \hugo\sites\myblog\
xcopy /s /i /y D:\hugo\sites\myblog\content\post_images D:\hugo\sites\myblog\content\post\post_images
hugo --theme=maupassant --baseUrl="https://simplifythewhale.com" --buildDrafts
rd /s /q D:\hugo\sites\myblog\content\post\post_images
cd public
git config --global core.autocrlf false
git add .
git commit -m "commit myblog"
git remote add origin git@github.com:xzyu0106/xzyu0106.github.io.git
git push -u origin master
scp -r D:/hugo/sites/myblog/public/* root@121.41.229.169:/home/hugo