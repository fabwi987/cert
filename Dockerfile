FROM golang:1.8
WORKDIR /go/src/app
COPY . .
RUN go-wrapper download
RUN go-wrapper install
RUN mkdir /certs
EXPOSE 443
CMD ["go-wrapper", "run"]