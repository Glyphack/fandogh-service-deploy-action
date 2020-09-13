FROM python:3.8.5

RUN pip install fandogh-cli --upgrade

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
