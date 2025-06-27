#!/bin/bash

# 自动推送代码到Git仓库
echo "🚀 开始自动推送代码到Git..."

# 检查是否有未提交的更改
if [ -n "$(git status --porcelain)" ]; then
    echo "📝 检测到未提交的更改，正在添加..."
    
    # 添加所有更改
    git add .
    
    # 获取当前时间作为提交信息
    current_time=$(date "+%Y-%m-%d %H:%M:%S")
    commit_message="自动提交 - $current_time"
    
    # 提交更改
    echo "💾 提交更改: $commit_message"
    git commit -m "$commit_message"
    
    # 推送到远程仓库
    echo "🌐 推送到远程仓库..."
    git push
    
    if [ $? -eq 0 ]; then
        echo "✅ 代码已成功推送到Git仓库！"
        echo "📄 提交信息: $commit_message"
    else
        echo "❌ 推送失败，请检查网络连接或Git配置"
        exit 1
    fi
else
    echo "ℹ️  没有检测到未提交的更改，无需推送"
fi

echo "🎉 自动推送完成！" 