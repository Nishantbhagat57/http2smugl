FROM golang:1.19-buster as builder
RUN go install github.com/neex/http2smugl@latest
WORKDIR /root/
EXPOSE 5000
ENTRYPOINT ["/go/bin/http2smugl"]
