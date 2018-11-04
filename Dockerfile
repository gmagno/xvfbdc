FROM debian:jessie-slim

ENV PYTHONFAULTHANDLER=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONPATH=/home/app \
    LC_ALL=C.UTF-8 \
    LANG=C.UTF-8 \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y --no-install-recommends install \
        python3-pip \
        python3-tk \
        x11-apps \
        xvfb &&\
    rm -rf /var/lib/apt/lists/*

RUN mkdir /home/app
WORKDIR /home/app
COPY . .

RUN mkdir /home/app/mount

CMD ["bash", "run.sh"]
