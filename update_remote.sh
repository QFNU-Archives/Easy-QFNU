#!/bin/bash

# 定义新的远程仓库URL
NEW_REMOTE_URL="https://github.com/W1ndys/Easy-QFNU.git"

# 检查当前的远程URL
echo "当前的远程URL:"
git remote -v

# 更新远程URL
echo "更新远程URL为: $NEW_REMOTE_URL"
git remote set-url origin $NEW_REMOTE_URL

# 验证更改
echo "更新后的远程URL:"
git remote -v

# 添加所有更改
echo "添加所有更改到暂存区..."
git add .

# 提交更改
echo "提交更改..."
git commit -m "更新远程仓库URL"

# 推送更改到新的远程仓库
echo "推送更改到远程仓库..."
git push origin main

echo "操作完成！"