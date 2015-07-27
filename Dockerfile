FROM jpetazzo/dind

ENV DOCKER_DAEMON_ARGS -D

RUN apt-get update && apt-get install shellinabox

RUN useradd -ms /bin/bash training ; \
    echo "training:training" | chpasswd ; \
    usermod -aG docker training;

ADD start.sh .
RUN chmod +x start.sh

EXPOSE 4200

CMD ["./start.sh"]
