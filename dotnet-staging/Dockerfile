FROM microsoft/dotnet:latest

RUN apt update

COPY core  /var/aspnetcore
COPY core_save /var/aspnetcore


EXPOSE  4041

WORKDIR /var/aspnetcore
CMD  dotnet KS.dll
