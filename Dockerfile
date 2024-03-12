FROM nginx:alpine-slim
COPY web/ usr/share/nginx/html
EXPOSE 80