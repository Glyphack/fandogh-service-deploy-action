FROM python:3.8.5

RUN pip install fandogh-cli --upgrade

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash", "/entrypoint.sh", "1", "2", "3", "4", "5"]
