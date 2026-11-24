FROM nginx:1.31.10-alpine-slim
COPY web/ usr/share/nginx/html
EXPOSE 80
