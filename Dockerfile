FROM louislam/uptime-kuma:2
COPY start.sh /start.sh
RUN chmod +x /start.sh
WORKDIR /app
ENTRYPOINT ["/start.sh"]
