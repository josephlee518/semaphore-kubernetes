FROM ubuntu:16.04
RUN apt update && apt install -y curl git ansible
RUN curl -LO https://github.com/ansible-semaphore/semaphore/releases/download/v2.6.4/semaphore_2.6.4_linux_amd64.tar.gz
RUN mkdir -p /root/semaphore/bin
RUN tar -xf semaphore_2.6.4_linux_amd64.tar.gz -c /root/semaphore/bin
ENV PATH="/root/semaphore/bin:${PATH}"
ENTRYPOINT [ "semaphore" ]