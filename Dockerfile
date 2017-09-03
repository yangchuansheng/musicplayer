FROM python:2-alpine

ADD ../ /root/musicplayer

RUN cd /root/musicplayer \
    && pip2 install -r requirements.txt

WORKDIR /root/musicplayer

EXPOSE 5000

CMD ["python2", "wsgi.py"]
