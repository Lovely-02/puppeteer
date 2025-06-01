FROM --platform=linux/amd64 node:20-slim

# 安装Chrome/Puppeteer完整运行依赖及字体
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates fonts-liberation libasound2 libatk-bridge2.0-0 libatk1.0-0 libatspi2.0-0 \
        libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libglib2.0-0 \
        libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 \
        libx11-xcb1 libxcb1 libxcomposite1 libxdamage1 libxext6 libxfixes3 libxrandr2 \
        libxrender1 libxss1 libxtst6 lsb-release wget xdg-utils \
        curl libcurl3-gnutls \
        libdrm2 libgbm1 libudev1 libvulkan1 libxkbcommon0 \
        fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst fonts-freefont-ttf \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 验证字体安装
RUN fc-list > /fonts.list && cat /fonts.list

# 安装pnpm
RUN npm install -g pnpm

# 设置工作目录并安装项目依赖
WORKDIR /app
COPY package.json pnpm-lock.yaml ./
RUN pnpm i --frozen-lockfile
COPY . .

# 运行应用
CMD ["node", "index.js"]