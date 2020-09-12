FROM python:3.8.5

RUN pip install fandogh-cli --upgrade

WORKDIR /etc/app

COPY entrypoint.sh /entrypoint.sh

CMD ["sh", "/entrypoint.sh", "1", "2", "3", "4", "5"]
