# plex-nvdec

Based on Linuxserver.io Plex Media Server container with a few key differences.

1. 'Plex Relay' binary removed (indirect connection disabled).

2. Support for hardware decoding with Nvidia GPU (NVDEC).


To get hardware acceleration for Nvidia GPU's you need to install the container runtime provided by Nvidia on the host, instructions can be found here:

https://github.com/NVIDIA/nvidia-docker


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

More info:
[Instructions](https://hub.docker.com/r/linuxserver/plex/)
