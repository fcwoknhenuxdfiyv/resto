FROM alpine:3

# install go
COPY --from=golang:1.17-alpine /usr/local/go/ /usr/local/go/
 
ENV PATH="/usr/local/go/bin:${PATH}"

RUN apk update && apk upgrade

RUN go install github.com/abdfnx/resto@latest

ENTRYPOINT ["/root/go/bin/resto"]
