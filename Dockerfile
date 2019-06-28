FROM linuxserver/plex:latest

# add scripts to modify plex binaries 
COPY root/ /
RUN chmod +x /etc/plex-nvdec-patch/transcoder-nvdec-patch.sh

# ports and volumes
EXPOSE 32400 32400/udp 32469 32469/udp 5353/udp 1900/udp
VOLUME /config /transcode /plex-nvdec-patch
