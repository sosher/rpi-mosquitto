# Pull base image
FROM resin/raspberry-pi-alpine-python
MAINTAINER Pablo Veron <pveron2001@gmail.com>

# Install packages
RUN apk --no-cache add mosquitto mosquitto-clients

#RUN adduser --system --disabled-password --disabled-login mosquitto

#COPY config /mqtt/config
#VOLUME ["/mqtt/config", "/mqtt/data", "/mqtt/log"]

# Expose MQTT ports
# EXPOSE 1883 9001
# CMD /usr/sbin/mosquitto -c /mqtt/config/mosquitto.conf

ENV PATH /usr/sbin:$PATH

ENTRYPOINT ["/usr/sbin/mosquitto"]
