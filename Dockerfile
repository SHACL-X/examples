FROM nginx:1.27.5-alpine-slim
COPY web/ usr/share/nginx/html
EXPOSE 80
