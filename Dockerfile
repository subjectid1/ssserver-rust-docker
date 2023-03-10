FROM ghcr.io/shadowsocks/ssserver-rust:v1.11.2
EXPOSE 8388
ENTRYPOINT [ "ssserver"]
CMD ["-s", "[::]:8388", "-m", "aes-256-gcm", "-k", "hello-kitty", "--log-without-time", "-v"]
