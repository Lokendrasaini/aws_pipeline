FROM ubuntu:22.04
RUN apt update && apt install apache2 -y
RUN systemctl enable apache2
WORKDIR /var/www/html
COPY . .
ENTRYPOINT [ "ls" ]