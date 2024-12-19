FROM nginx:1.27.3-alpine-slim
COPY web/ usr/share/nginx/html
EXPOSE 80
