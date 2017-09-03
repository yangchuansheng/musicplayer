FROM python:2-alpine

ADD .* /root/

RUN cd /root/ \
    && ls -l

WORKDIR /root/musicplayer

EXPOSE 5000

CMD ["python2", "wsgi.py"]
