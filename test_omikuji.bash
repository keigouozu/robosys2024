#!/bin/bash
# SPDX-FileCopyrightText: 2024 Keigo Uozu
# SPDX-License-Identifier: BSD-3-Clause

# 実行するPythonコードのパス
PYTHON_SCRIPT="omikuji"

# 実行する回数
TEST_ITERATIONS=20

# おみくじの中身
EXPECTED=("大吉" "吉" "中吉" "小吉" "末吉" "凶" "大凶")

echo "テスト開始: ${PYTHON_SCRIPT}"

for i in $(seq 1 $TEST_ITERATIONS); do

    OUTPUT=$(python3 $PYTHON_SCRIPT | grep "あなたの運勢は:" | awk -F": " '{print $2}')
    
    if [[ " ${EXPECTED[@]} " =~ " ${OUTPUT} " ]]; then
        echo "${i}回目: 成功 (結果: ${OUTPUT})"
    else
        echo "${i}回目: 失敗 (結果: ${OUTPUT})"
        exit 1  
    fi
done

echo "すべてのテストが完了しました"
