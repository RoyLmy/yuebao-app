# 余额宝 PWA

这是一个使用 PWA 技术构建的余额宝演示应用。

## 功能特点

- 响应式设计，适配各种移动设备
- 支持添加到主屏幕
- 离线访问功能
- 模拟余额宝界面和基本功能

## 如何使用

1. 在 iPhone Safari 浏览器中访问应用
2. 点击分享按钮（底部工具栏中的方框加箭头图标）
3. 选择"添加到主屏幕"
4. 完成添加后，应用图标会出现在主屏幕

## 本地开发

```bash
# 安装依赖
npm install

# 启动开发服务器
npm start
```

## 在手机上运行

### 方法一：使用Node.js（推荐）

1. 确保电脑已安装 Node.js
2. 在项目目录下运行：
   ```bash
   npm install
   npm start
   ```
3. 在手机浏览器中访问：
   - 确保手机和电脑在同一个WiFi网络下
   - 在手机浏览器中输入：`http://[电脑IP]:3000`
   - 电脑IP可以通过运行 `ipconfig`（Windows）或 `ifconfig`（Mac/Linux）查看

### 方法二：使用Python（简单）

1. 确保电脑已安装 Python 3
2. 在项目目录下运行：
   ```bash
   python3 -m http.server 3000
   ```
3. 在手机浏览器中访问：
   - 确保手机和电脑在同一个WiFi网络下
   - 在手机浏览器中输入：`http://[电脑IP]:3000`

### 方法三：直接在手机上打开

1. 将整个项目文件夹复制到手机存储
2. 使用手机浏览器直接打开 index.html 文件

## 注意事项

- 界面已针对手机屏幕（iPhone 15）优化
- 建议使用 Safari 或 Chrome 浏览器访问
- 如遇到跨域问题，请使用方法一或方法二运行 