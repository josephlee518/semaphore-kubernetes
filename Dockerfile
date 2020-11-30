# /*
#  * ----------------------------------------------------------------------------
#  * "THE BEER-WARE LICENSE" (Revision 42):
#  * <jaeseung172@knou.ac.kr> wrote this file.  As long as you retain this notice you
#  * can do whatever you want with this stuff. If we meet some day, and you think
#  * this stuff is worth it, you can buy me a beer in return.   SEUNGWOO LEE
#  * ----------------------------------------------------------------------------
#  */
FROM ubuntu:16.04
RUN apt update && apt install -y curl git ansible
RUN curl -LO https://github.com/ansible-semaphore/semaphore/releases/download/v2.6.4/semaphore_2.6.4_linux_amd64.tar.gz
RUN mkdir -p /root/semaphore/bin
RUN tar -xf semaphore_2.6.4_linux_amd64.tar.gz -C /root/semaphore/bin
ENV PATH="/root/semaphore/bin:${PATH}"
ENTRYPOINT [ "semaphore" ]