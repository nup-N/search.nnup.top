FROM python:3.12-slim

WORKDIR /app

# 安装系统依赖
RUN apt-get update && apt-get install -y --no-install-recommends \
    libxml2 \
    libxslt1.1 \
    libffi8 \
    && rm -rf /var/lib/apt/lists/*

# 复制依赖
COPY requirements.txt requirements-server.txt ./
RUN pip install --no-cache-dir -r requirements.txt -r requirements-server.txt

# 复制代码
COPY searx ./searx

# 生成密钥
RUN sed -i "s|ultrasecretkey|$(openssl rand -hex 32)|g" searx/settings.yml || true

EXPOSE 8080

ENV SEARXNG_SETTINGS=/app/searx/settings.yml

CMD ["granian", "--host", "0.0.0.0", "--port", "8080", "searx.webapp:app"]
