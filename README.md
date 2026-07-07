# search.nnup.top

nnup 的元搜索引擎，基于 [SearXNG](https://github.com/searxng/searxng) 构建。

## 特性

- 聚合 70+ 搜索引擎结果
- 隐私保护，不追踪用户
- 无广告
- 可自定义主题
- 自托管部署

## 部署

```bash
docker compose up -d
```

访问 http://localhost:8080

## 配置

修改 `searx/settings.yml` 自定义品牌、搜索引擎等。

## 自定义主题

主题文件位于 `searx/static/themes/simple/` 和 `searx/templates/simple/`。

## 致谢

本项目基于 [SearXNG](https://github.com/searxng/searxng) 开源项目，遵循 AGPL-3.0 协议。
