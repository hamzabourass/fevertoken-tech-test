FROM nginx:latest

COPY TaskOne/index.html /usr/share/nginx/html

EXPOSE 80
