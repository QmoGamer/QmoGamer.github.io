# 当发生错误时中止脚本
set -e

npm run build

cd ..
rm -rf test
mv test-1/dist test

git init
git add -A
git commit -m 'deploy'

# 部署到 https://<USERNAME>.github.io
git push -f git@github.com:QmoGamer/QmoGamer.github.io.git master