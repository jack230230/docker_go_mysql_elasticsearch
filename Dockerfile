FROM golang:1.6
MAINTAINER Eagle Chen <chygr1234@gmail.com>

RUN apt-get update && \
  apt-get install -y mysql-client && \
  go get github.com/tools/godep && \
  (go get github.com/jack230230/go-mysql-elasticsearch || true ) && \
  cd /go/src/github.com/jack230230/go-mysql-elasticsearch && \
  go build

COPY run.sh /run_go_mysql_es
ENTRYPOINT ["/run_go_mysql_es"]
