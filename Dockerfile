FROM ubuntu:24.04

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y sudo curl wget vim git openssh-server iputils-ping net-tools python3 python3-pip bash-completion micro && \    
    apt-get clean

# Set root password (for lab only!)
RUN echo 'root:labpass' | chpasswd

EXPOSE 22

CMD ["sleep", "infinity"]
