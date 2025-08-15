#!/usr/bin/env node

const { execSync } = require('child_process');
const fs = require('fs');

function runLighthouse() {
    console.log('🚀 Lighthouse 分析を開始します...');

    // Google のサイトを分析してみる
    const url = 'https://google.com';
    const timestamp = Date.now();

    try {
        const command = `lighthouse ${url} \
            --output json \
            --output html \
            --output-path reports/report-${timestamp} \
            --chrome-flags="--headless --no-sandbox --disable-gpu --disable-dev-shm-usage" \
            --quiet`;

        console.log('実行中:', url);
        execSync(command);

        console.log('✅ 分析完了!');
        console.log(`📊 レポート: reports/report-${timestamp}.report.html`);

    } catch (error) {
        console.error('❌ エラー:', error.message);
    }
}

runLighthouse();