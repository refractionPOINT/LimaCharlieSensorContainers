# Requires an LC_INSTALLATION_KEY environment variable
# specifying the installation key value.
# Requires a HOST_FS environment variable that specifies where
# the host's root filesystem is mounted within the container
# like "/rootfs".
# Example:
# export ENV HOST_FS=/rootfs
# docker run --privileged --net=host -v /:/rootfs:ro your-lc-container-name

FROM alpine

RUN mkdir lc
WORKDIR /lc

RUN wget https://app.limacharlie.io/get/linux/alpine64 -O lc_sensor
RUN chmod 500 ./lc_sensor

CMD ./lc_sensor -d -