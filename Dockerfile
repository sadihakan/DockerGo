FROM golang:1.12.0-alpine3.9
RUN mkdir /DockerGo
ADD . /DockerGo
WORKDIR /DockerGo
RUN go build -o main .
EXPOSE 8080
CMD ["/DockerGo/main"]