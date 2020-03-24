FROM nginx:latest
RUN sed -i 's/nginx/ousmana/g' /usr/share/nginx/html/index.html
EXPOSE 80
