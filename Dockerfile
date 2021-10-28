FROM ghcr.io/shadowsocks/ssserver-rust:v1.11.2

ENV PORT=8388
ENV ENCRYPTION_ALGORITHM=aes-256-gcm
ENV PASSWORD=hello-kitty

ENTRYPOINT [ "ssserver", "-s", "[::]:$PORT", "-m", "$ENCRYPTION_ALGORITHM", "-k", "$PASSWORD", "--log-without-time", "-v" ]
