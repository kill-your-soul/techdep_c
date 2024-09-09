FROM ubuntu:latest AS builder

RUN apt-get update && apt-get install -y gcc

COPY main.c /main.c

RUN cc -o /main /main.c -static

FROM scratch AS runner

COPY --from=builder /main /main

CMD ["/main"]