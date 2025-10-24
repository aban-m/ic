FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    	sudo curl wget vim git openssh-server \
    	iputils-ping net-tools python3 python3-pip bash-completion micro \
    	dnsutils traceroute iproute2 build-essential jq htop less \
    	unzip tar rsync && \
    apt-get clean

# Set root password (for lab only!)
RUN echo 'root:labpass' | chpasswd

EXPOSE 22

CMD ["sleep", "infinity"]
