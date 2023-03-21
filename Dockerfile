FROM nginx:latest 
LABEL chukkavijay27@gmail.com
RUN apt-get update && apt-get install -y curl \
     && useradd -m ansibleadmin --shell /bin/bash \
COPY index.html /usr/share/nginx/html/
COPY scorekeeper.js /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
RUN mkdir /myapp
WORKDIR /myapp
CMD ["nginx", "-g", "daemon off;"]
