# Use the Alpine Linux base image
FROM alpine:latest

RUN apk update && \
    apk add --no-cache jq \
    curl \ 
    python3 \
    py3-pip \
    git \
    openssh-client \
    bash \
    && pip3 install cookiecutter --break-system-packages \
    && pip3 install six --break-system-packages

COPY *.sh /
RUN chmod +x /*.sh

ENTRYPOINT ["/entrypoint.sh"]
