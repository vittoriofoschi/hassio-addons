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
# Change root's home dir to /data; workaround to persist ZigBee network data
RUN mkdir /data && \
    usermod -d /data root && \
    #sed -i 's/\/root/\/data' /etc/passwd && \
    chown root:root /usr/bin/deCONZ*
VOLUME [ "/data" ]

# Hass.io-specific labels
LABEL io.hass.version="2.05.08" \ 
      io.hass.type="addon" \
      io.hass.arch="armhf|amd64"

ENTRYPOINT [ "/tini", "-s", "--", "/run.sh" ]