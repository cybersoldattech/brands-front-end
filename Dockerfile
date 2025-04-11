
FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html/index.html
COPY assets/css/style.css /usr/share/nginx/html/assets/css/style.css
COPY assets/img/verified.png /usr/share/nginx/html/assets/img/verified.png
EXPOSE 80

# Commande par défaut pour démarrer Nginx et servir les fichiers
CMD ["nginx", "-g", "daemon off;"]
