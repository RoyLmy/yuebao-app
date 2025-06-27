#!/bin/bash

# 监控文件变化并自动推送到Git
echo "👀 开始监控文件变化并自动推送..."
echo "⚠️  按 Ctrl+C 停止监控"
echo ""

# 函数：执行自动推送
auto_push() {
    if [ -n "$(git status --porcelain)" ]; then
        echo ""
        echo "🔄 检测到文件变化，开始自动推送..."
        
        # 显示变化的文件
        echo "📋 变化的文件："
        git status --porcelain
        echo ""
        
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
        fi
        echo ""
        echo "👀 继续监控文件变化..."
    fi
}

# 初始检查
auto_push

# 持续监控文件变化（每30秒检查一次）
while true; do
    sleep 30
    auto_push
done 