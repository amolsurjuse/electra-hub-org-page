FROM nginx:1.27-alpine
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY terms.html /usr/share/nginx/html/terms.html
COPY privacy.html /usr/share/nginx/html/privacy.html
COPY electra-hub-logo-dark.svg /usr/share/nginx/html/electra-hub-logo-dark.svg
COPY electra-hub-logo-light.svg /usr/share/nginx/html/electra-hub-logo-light.svg
COPY EV_Charging_Animation_Generation.mp4 /usr/share/nginx/html/EV_Charging_Animation_Generation.mp4
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
