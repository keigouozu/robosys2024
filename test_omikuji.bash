#!/bin/bash
# SPDX-FileCopyrightText: 2024 Keigo Uozu
# SPDX-License-Identifier: BSD-3-Clause

function check_output {
    expected="$1"
    actual="$2"
    if [[ "$actual" == *"$expected"* ]]; then
        echo "PASS: Found '$expected'"
    else
        echo "FAIL: Expected '$expected', but got '$actual'"
        exit 1
    fi
}

SCRIPT="./omikuji"

# テストケース1: 正常におみくじを引く
output=$(echo -e "y\nn" | python3 $SCRIPT)
check_output "あなたの運勢は:" "$output"

# テストケース2: 無効な入力をテスト
output=$(echo -e "x\ny\nn" | python3 $SCRIPT)
check_output "無効な入力です" "$output"

# テストケース3: 終了確認
output=$(echo -e "n" | python3 $SCRIPT)
check_output "おみくじを終了します。" "$output"

echo "すべてのテストが成功しました。"
