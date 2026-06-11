FROM nginx:1.27-alpine
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY terms.html /usr/share/nginx/html/terms.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
