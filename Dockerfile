FROM debian:buster-slim

LABEL mainteiner="Mahito Tanno <pb94.mahito@gmail.com>"

RUN apt-get -y update && apt-get install -y --no-install-recommends chktex && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /work
CMD ["/bin/sh"]
