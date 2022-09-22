FROM golang:1.19-alpine

RUN \
  apk update; \
  apk add git; \
  apk add protoc; \
  go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.26 ;\
  go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.1

WORKDIR /volumes

CMD ["/bin/ash"]