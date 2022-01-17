# Requires an LC_INSTALLATION_KEY environment variable
# specifying the installation key value.
# Requires a HOST_FS environment variable that specifies where
# the host's root filesystem is mounted within the container
# like "/rootfs".
# Requires a NET_NS environment variable that specific where
# the host's namespaces directory is mounted within the container
# like "/netns".
# Example:
# export ENV HOST_FS=/rootfs
# docker run --privileged --net=host -v /:/rootfs:ro -v /var/run/docker/netns:/netns:ro --env HOST_FS=/rootfs --env NET_NS=/netns --env LC_INSTALLATION_KEY=your_key refractionpoint/limacharlie_sensor

FROM centos

RUN update-ca-trust

RUN mkdir lc
WORKDIR /lc

RUN curl https://downloads.limacharlie.io/sensor/linux/64 -o lc_sensor
RUN chmod 500 ./lc_sensor

CMD ./lc_sensor -d -
