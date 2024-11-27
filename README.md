# omikujiコマンド
[![test](https://github.com/keigouozu/robosys2024/actions/workflows/test_omikuji.yml/badge.svg)](https://github.com/keigouozu/robosys2024/actions/workflows/test_omikuji.yml)

## 概要
- おみくじのシュミレーションができるコマンドです
- いつでもどこでもおみくじを引くことができます

## 使用方法
リポジトリをクローン
```bash
git clone git@github.com:keigouozu/robosys2024.git
```
ディレクトリに移動
```bash
cd robosys2024 
```
実行権限を付与
```bash
chmod +x omikuji
```
実行
```bash
./omikuji
```
出力例
```bash
今日の運勢を占いますか？　(y/n): y
あなたの運勢は: 大凶
```
```bash
今日の運勢を占いますか？　(y/n): n
おみくじを終了します。
```

## 実行環境
- Python: バージョン3.7以降
  - テスト済みバージョン: 3.7～3.11
- **os**: Ubuntu 22.04 LTS以降
- **Shell**: Bash バージョン5.0以降

## ライセンス
BSD-3-Clause

## 著作権
© 2024 Keigo Uozu
