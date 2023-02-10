from ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip git

RUN ls / && cd / && git clone --branch girbot-old https://github.com/girdot/girbot.git

ENTRYPOINT ["/girbot/entrypoint.sh"]
