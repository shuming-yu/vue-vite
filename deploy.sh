# Vite 4 的文件改採用 GitHub Action 的方式
# Vite 3 的文件 : https://v3.vitejs.dev/guide/static-deploy.html#github-pages
# <USERNAME> -> shuming-yu & <REPO> -> vue-vite
# 修改完成後使用 Git Bash Here 下指令 : sh deploy.sh

#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# place .nojekyll to bypass Jekyll processing
echo > .nojekyll

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git checkout -B main
git add -A
git commit -m 'deploy'

# 部屬至 主線main
# if you are deploying to https://shuming-yu.github.io
# git push -f git@github.com:shuming-yu/shuming-yu.github.io.git main

# 部屬至 main:gh-pages
# if you are deploying to https://shuming-yu.github.io/vue-vite
git push -f git@github.com:shuming-yu/vue-vite.git main:gh-pages

cd -
