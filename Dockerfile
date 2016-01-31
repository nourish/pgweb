FROM golang:1.5

COPY . /go/src/github.com/sosedoff/pgweb
WORKDIR /go/src/github.com/sosedoff/pgweb
RUN chmod +x script/run.sh

RUN go get github.com/tools/godep

RUN godep restore
RUN godep go build && godep go install

EXPOSE 8081
CMD ["./script/run.sh"]
