FROM registry.suse.com/bci/golang:1.23 AS builder
RUN go install github.com/golangci/golangci-lint/v2/cmd/golangci-lint@v2.1.6
WORKDIR /usr/src/app
COPY ../go.mod go.sum ./
RUN go mod download
COPY .. .
RUN make build

FROM registry.suse.com/bci/bci-micro:latest
COPY --from=builder /usr/src/app/bin/pushprox-proxy /usr/bin
COPY --from=builder /usr/src/app/bin/pushprox-client /usr/bin
CMD ["pushprox-proxy"]
