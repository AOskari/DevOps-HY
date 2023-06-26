FROM nginx:alpine

COPY ./shiptracker/index.html /usr/share/nginx/html/
COPY ./shiptracker/scripts/ /usr/share/nginx/html/scripts/
COPY ./shiptracker/new.css /usr/share/nginx/html/
COPY ./shiptracker/images/ /usr/share/nginx/html/images/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]