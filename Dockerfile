FROM nginx:1.28.0-alpine-slim
COPY web/ usr/share/nginx/html
EXPOSE 80
