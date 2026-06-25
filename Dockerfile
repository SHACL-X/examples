FROM nginx:1.31.2-alpine-slim
COPY web/ usr/share/nginx/html
EXPOSE 80
