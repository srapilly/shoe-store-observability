FROM alpine:3.18.4

ARG CHECKSUM="e4da4f6c00402e893f3e3120c62e16b61a84aaa78f772b3e155f319f5210d2c6"
ADD https://github.com/vi/websocat/releases/download/v1.12.0/websocat.x86_64-unknown-linux-musl /websocat
RUN echo "${CHECKSUM} /websocat" | sha256sum -c
RUN chmod +x /websocat

CMD ["/websocat",  "ws://host.docker.internal:8080"]   