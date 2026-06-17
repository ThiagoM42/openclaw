FROM coollabsio/openclaw:latest

ENV OPENCLAW_HOME=/root/.openclaw
ENV HOME=/root
ENV OPENCLAW_NO_RESPAWN=1

RUN mkdir -p /root/.openclaw

VOLUME ["/root/.openclaw"]

EXPOSE 8080

CMD ["openclaw", "gateway", "start", "--allow-unconfigured"]