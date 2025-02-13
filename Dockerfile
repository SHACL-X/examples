FROM nginx:1.27.4-alpine-slim
COPY web/ usr/share/nginx/html
EXPOSE 80
