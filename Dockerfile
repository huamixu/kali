FROM kalilinux/kali-linux-docker:latest

RUN apt-get update && apt-get install -y --no-install-recommends \
		kali-linux-full \
	&& rm -rf /var/lib/apt/lists/* && \
    apt-get purge -y --auto-remove && \
    apt-get clean

# Start up in the work directory
WORKDIR /root

CMD ["/bin/bash"]