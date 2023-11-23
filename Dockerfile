FROM alpine:3.18.4

ADD https://github.com/vi/websocat/releases/download/v1.12.0/websocat.x86_64-unknown-linux-musl /websocat
RUN chmod +x /websocat

CMD ["/websocat",  "ws://host.docker.internal:8080"]   