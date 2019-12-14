# LimaCharlie Sensor Container

![LimaCharlie Logo](https://storage.googleapis.com/limacharlie-io/logo_glitch.gif)

## What is LimaCharlie?
LimaCharlie is a Security Infrastructure as a Service platform.

The foundational technology used by LimaCharlie is a cross platform EDR.

## What is this container used for?

This container is designed to run the LimaCharlie EDR in a privileged
container as part of Docker-based cluster environments like Kubernetes.

The deployed EDR gives you visibility, and logging of all the container's activity
as well as the ability to perform investigations and mitigation.

## Basic Usage

This assumes you have an Organization created on LimaCharlie.io (free account and free tier available).

On LimaCharlie.io create an Installation Key and copy it to your clipboard.

On a host of your cluster (although you can still run the sensor on a normal Docker install), start
the container like this (replacing `<<<your_key>>>` with the installation key value):

```
docker run --privileged --net=host -v /:/rootfs:ro --env HOST_FS=/rootfs --env LC_INSTALLATION_KEY=<<<your_key>>> refractionpoint/limacharlie_sensor
```

That's it! You should see your sensor pop-up in your LimaCharlie Organization.

## Advanced

For more advanced documentation, like sample Kubernetes sample configurations
see the [LimaCharlie Documentation](https://doc.limacharlie.io).