## !!! NOT NEEDED ANY MORE, PLEX HAS ADDED NATIVE NVDEC+NVENC TO PLEX MEDIA SERVER 1.17.0.1709+ !!!




# plex-nvdec

Based on [Linuxserver.io Plex Media Server](https://hub.docker.com/r/linuxserver/plex/) container with two added benefits.

1. 'Plex Relay' binary removed (indirect connection disabled, portfowrarding/UPNP only).

2. Support for hardware decoding with Nvidia GPU (NVDEC).

# Enable GPU passthrough:

To get hardware acceleration for Nvidia GPU's you need to install the container runtime provided by Nvidia on the host, instructions can be found here:
https://github.com/NVIDIA/nvidia-docker

# Docker run example:

```
docker run \
-d \
--net=host \
--runtime=nvidia \
-e NVIDIA_VISIBLE_DEVICES=all \
-e NVIDIA_DRIVER_CAPABILITIES=compute,video,utility \
-e VERSION=latest \
-e TZ=Europe/Stockholm \
-e PUID=1000 \
-e PGID=1000 \
-v /home/plex/config:/config \
-v /media:/media \
--restart=unless-stopped \
--name=Plex \
nixta/plex-nvdec
```

# More info about the base container:
[linuxserver/plex](https://hub.docker.com/r/linuxserver/plex/)
