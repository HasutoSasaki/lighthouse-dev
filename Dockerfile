FROM node:18-alpine

# Chrome の依存関係をインストール
RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ca-certificates \
    ttf-freefont

# Chrome のパスを設定
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

WORKDIR /app

# package.json をコピーして依存関係をインストール
COPY package*.json ./
RUN npm install

# Lighthouse をグローバルインストール
RUN npm install -g lighthouse

# スクリプトファイルをコピー
COPY scripts/ ./scripts/
# COPY lighthouse-config.js ./

# レポート出力ディレクトリ作成
RUN mkdir -p reports

# 実行権限設定
RUN chmod +x scripts/*.js

CMD ["npm", "start"]