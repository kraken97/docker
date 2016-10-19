FROM microsoft/dotnet:latest

RUN apt update

COPY core  /var/aspnetcore
COPY core_save /var/aspnetcore


EXPOSE  4040

WORKDIR /var/aspnetcore
CMD  dotnet  dotnet-test-xunit.dll test.dll -xml results.xml
