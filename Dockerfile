FROM python:2-alpine

ADD .* /root/

RUN cd /root/ \
    && pip2 install -r requirements.txt
    && apk update
    && apk add git
    && git clone https://github.com/ccbikai/musicplayer.git

WORKDIR /root/musicplayer

EXPOSE 5000

CMD ["python2", "wsgi.py"]
