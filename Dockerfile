FROM python:2-alpine

ADD static /root/musicplayer/static
ADD templates /root/musicplayer/templates
ADD Procfile /root/musicplayer/Procfile
ADD favicon.ico /root/musicplayer/favicon.ico
ADD requirements.txt /root/musicplayer/requirements.txt
ADD wsgi.py /root/musicplayer/wsgi.py
ADD xmltodict.py /root/musicplayer/xmltodict.py

RUN cd /root/musicplayer \
    && pip2 install -r requirements.txt

WORKDIR /root/musicplayer

EXPOSE 5000

CMD ["python2", "wsgi.py"]
