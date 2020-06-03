FROM debian:buster

EXPOSE 80 443
RUN apt-get update;
RUN apt-get install -y nginx;
RUN apt install -y mariadb-server;
RUN apt install -y php-fpm php-mysql;
RUN apt install -y unzip;
RUN apt install openssl
COPY /srcs /root/
ENV SWITCH=0
CMD bash /root/start.sh
