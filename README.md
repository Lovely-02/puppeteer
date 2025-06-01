# Puppeteer

基于 Puppeteer 的网页自动化工具，支持网页截图、数据爬取等操作。通过 Docker 容器化部署确保环境一致性，也支持直接 Node.js 环境运行。

## 用于`Yunzai`项目的外置渲染

## 🛠 前置要求

- Node.js 20+
- Docker

## 🚀 NodeJS 部署

<details>
  <summary>展开/收起</summary>

### 1. 克隆仓库

```bash
git clone https://github.com/Lovely-02/puppeteer
```

### 2. 进入项目目录

```bash
cd puppeteer
```

### 3. 安装依赖

```bash
pnpm install
```

### 4. 启动项目

```bash
node .
```

</details>

## 🚀 Docker-compose 部署

<details>
  <summary>展开/收起</summary>

### 1. 克隆仓库

```bash
git clone https://github.com/Lovely-02/puppeteer
```

### 2. 进入项目目录

- 修改 `docker-compose.yml` 文件中的 `volumes` 为你的 `Yunzai` 地址

### 3. 构建镜像

```bash
docker compose up -d
```

</details>
