from ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip git && cd / && git clone https://github.com/girdot/girbot.git && pip install ./girbot

ENTRYPOINT ["/girbot/entrypoint.sh"]
