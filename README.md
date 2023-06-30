# vue-vite

This template should help get you started developing with Vue 3 in Vite.

## Recommended IDE Setup

[VSCode](https://code.visualstudio.com/) + [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar) (and disable Vetur) + [TypeScript Vue Plugin (Volar)](https://marketplace.visualstudio.com/items?itemName=Vue.vscode-typescript-vue-plugin).

## Customize configuration

See [Vite Configuration Reference](https://vitejs.dev/config/).

## Project Setup

```sh
npm install
```

### Compile and Hot-Reload for Development

```sh
npm run dev
```

### Compile and Minify for Production

```sh
npm run build
```

### Lint with [ESLint](https://eslint.org/)

```sh
npm run lint
```

### First Install

- framework : Vue
- variant : Customize with create-vue
![image](./public/step.PNG)

### 安裝套件

- vue-axios : https://www.npmjs.com/package/vue-axios

- randomuser API : https://randomuser.me/

### 參考

- Hash Mode : https://router.vuejs.org/guide/essentials/history-mode.html

```
首次安裝, router 設定, 瀏覽器(Web Server)無法運行 :
1. 首次安裝 -> npm run build -> 建立 dist 資料夾
2. 獨立開啟 dist 資料夾 -> 以 Code 開啟 -> 右下角 Go Live
3. 查看網址路徑未有 # -> 點選 About 頁面後重整頁面 -> Cannot GET /about
4. 修改 router/index.js -> createWebHistory -> createWebHashHistory -> npm run build
5. 獨立開啟 dist 資料夾 -> 以 Code 開啟 -> 右下角 Go Live
6. 查看網址路徑自動新增 # -> 點選 About 頁面後重整頁面 -> OK
```

- Env Variables and Modes : https://vitejs.dev/guide/env-and-mode.html#env-variables

- 部屬 Vite 專案至 GitHub Pages
- Vite 3 : https://v3.vitejs.dev/guide/static-deploy.html#github-pages
- Vite 4 : https://vitejs.dev/guide/static-deploy.html#github-pages
- [解决]git-ssh: connect to host github.com port 22: Connection timed out : https://www.jianshu.com/p/c3aac5024877
- git 端口拒绝解决方案 : https://blog.csdn.net/s740556472/article/details/80318886

```
1. 根目錄新增 deploy.sh, 將 Vite 3 - #github-pages 代碼複製貼上
2. 設定 部屬至 main:gh-pages
3. 至 vite.config.js 新增 base: "/vue-vite/"  ( vue-vite - 專案名稱 )
4. 修改完成後使用 Git Bash Here 下指令 : sh deploy.sh
5. 執行 npm run build, 再次執行 sh deploy.sh
6. GitHub vue-vite 查看 main 分支下是否新增 gh-pages
7. 成功後至 Setting -> Pages 設定 Branch 靜態網站
```