FROM nginx:1.31.6-alpine-slim
COPY web/ usr/share/nginx/html
EXPOSE 80
