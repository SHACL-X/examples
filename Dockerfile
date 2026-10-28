FROM nginx:1.31.8-alpine-slim
COPY web/ usr/share/nginx/html
EXPOSE 80
