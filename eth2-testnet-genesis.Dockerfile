FROM golang:alpine AS builder
RUN apk add --no-cache g++ cmake make git
WORKDIR /myapp/

RUN bash -c "git clone https://github.com/protolambda/eth2-testnet-genesis ."

RUN go install
RUN mv $GOPATH/bin/eth2-testnet-genesis /go/bin/eth2-testnet-genesis


FROM golang:alpine
RUN apk add --no-cache libstdc++
COPY --from=builder /go/bin/eth2-testnet-genesis /go/bin/eth2-testnet-genesis
ENTRYPOINT ["/go/bin/eth2-testnet-genesis"]