FROM debian:9

RUN apt update
RUN apt  install net-tools -y
RUN apt install python -y
RUN apt install python-pip -y
RUN apt install -y apache2 
Run apt install nginx -y
Run pip install robotframework
Run pip install robotframework-rammbock
Run pip install robotframework-selenium2library



EXPOSE 80

CMD apachectl -D FOREGROUND
