FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

  RUN apt-get update && apt-get install -y \
      python3.10 \
      python3.10-dev \
      python3-pip \
      gcc \
      libyaml-dev \
      git \
      && apt-get clean

  RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1

  RUN pip3 install PyYAML

  COPY feed.py /usr/bin/feed.py
  COPY entrypoint.sh /entrypoint.sh

  RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
