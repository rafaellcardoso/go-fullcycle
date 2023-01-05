FROM golang:1.7.3-alpine AS desafio
WORKDIR /src
COPY . .
RUN go build -o desafiogo 

FROM scratch
WORKDIR /src
COPY --from=desafio /src .
CMD ["./desafiogo"]
