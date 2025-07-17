FROM myimage:1.0

USER root 
RUN apk update && apk add nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /app/index.html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
