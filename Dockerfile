ARG BUILD_FROM
FROM $BUILD_FROM

# Install jq for config parsing
RUN apt-get update && \
    apt-get install -y \
    jq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Add Hass.io-specific start script
COPY run.sh /
RUN chmod +x /run.sh

# Create directory for persistent Hass.io config data
# Create deCONZ user, set home dir, run as user "deconz"
RUN mkdir /data && \
    groupadd -g 1000 deconz && \
    useradd --home-dir /data --no-create-home -u 1000 -g 1000 deconz && \
    chown -R deconz:deconz /data && \
    chown deconz:deconz /usr/bin/deCONZ*
USER deconz
VOLUME [ "/data" ]

# Hass.io-specific labels
LABEL io.hass.version="2.05.08" 
LABEL io.hass.type="addon" 
LABEL io.hass.arch="armhf|amd64"

ENTRYPOINT [ "/tini", "-s", "--", "/run.sh" ]