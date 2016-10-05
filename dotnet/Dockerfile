FROM microsoft/dotnet:latest

RUN apt update
RUN apt-get -y  install supervisor

ADD ks.conf /etc/supervisor/conf.d/ks.conf 
COPY core  /var/aspnetcore
COPY core_save /var/aspnetcore

EXPOSE  4040
CMD ["/usr/bin/supervisord", "-n"]
