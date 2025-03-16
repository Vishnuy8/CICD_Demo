FROM ubuntu
RUN apt-get update -y
RUN apt-get install nginx -y
RUN apt-get install zip -y
RUN apt-get install unzip -y
ADD Oxer.zip /usr/share/nginx/html/
ADD nginx.conf /etc/nginx/
WORKDIR /usr/share/nginx/html/
RUN unzip Oxer.zip
RUN mv oxer-html/* .
RUN rm -rf oxer-html/
RUN service nginx restart
EXPOSE 80