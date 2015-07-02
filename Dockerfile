FROM debian:latest

RUN apt-get -qqy update && apt-get -qqy upgrade
RUN apt-get install -qqy sudo wget libterm-readline-gnu-perl apt-utils ruby && \
    wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh && \
    useradd -m --shell /bin/bash dev
USER dev
WORKDIR /home/dev
COPY run.sh /home/dev/run.sh
CMD /home/dev/run.sh
