# lighthouse-dev

Lighthouse CLI と Docker の学習を目的としたプロジェクト

## 概要

このプロジェクトは、以下の技術を学習するために作成されました：

- **Lighthouse CLI**: Webパフォーマンス分析ツールの使用方法
- **Docker**: コンテナ化によるポータブルな開発環境の構築

ローカル環境にLighthouseを直接インストールする代わりに、Dockerコンテナを使用することで、環境の統一性と学習効果を高めています。

## 機能

- Dockerコンテナ内でのLighthouse分析の実行
- HTML/JSONレポートの自動生成
- パフォーマンス分析結果の保存

## 使用方法

### 1. リポジトリのクローン

```bash
git clone https://github.com/HasutoSasaki/lighthouse-dev.git
cd lighthouse-dev
```

### 2. Dockerコンテナの起動

```bash
docker compose up --build
```

### 3. 分析の実行

```bash
# コンテナ内でスクリプトを実行
docker compose run lighthouse node scripts/analyze.js


## ライセンス

MIT
