FROM golang:alpine AS builder
RUN apk add --no-cache g++ cmake make
WORKDIR /myapp/
COPY . .
RUN go install
RUN mv $GOPATH/bin/eth2-testnet-genesis /go/bin/eth2-testnet-genesis


FROM golang:alpine
RUN apk add --no-cache libstdc++
COPY --from=builder /go/bin/eth2-testnet-genesis /go/bin/eth2-testnet-genesis
ENTRYPOINT ["/go/bin/eth2-testnet-genesis"]