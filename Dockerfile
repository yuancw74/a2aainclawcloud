# 1. 继承第三方公共镜像
FROM justlikemaki/aiclient-2-api:latest

# 3. 注入健康检查指令（等效于 docker-compose 的功能）
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD ["node", "healthcheck.js"]
