FROM microsoft/azure-cli

COPY . /app
WORKDIR /app

RUN apt-get update -y && \
    apt-get install python3-setuptools -y && \
    ln -s /usr/bin/python3 /usr/local/bin/python3 && \
    easy_install3 pip && \
    pip3 install cement && \
    pip3 install colorlog

ENTRYPOINT ["./manageAzure.py"]
