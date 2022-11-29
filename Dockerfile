FROM alpine:latest

ARG VERSION_PIMO=1.15.1-beta1

RUN wget -O- https://github.com/CGI-FR/PIMO/releases/download/v${VERSION_PIMO}/pimo_${VERSION_PIMO}_linux_amd64.tar.gz | tar xz -C /usr/bin pimo

WORKDIR /home/pimo

ENV FF1_ENCRYPTION_KEY c2VjcmV0c2VjcmV0MTIzNA==

ENTRYPOINT []
CMD /usr/bin/pimo play -s -p $PORT
