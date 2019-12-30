FROM ubuntu:bionic

ENV APP_DIR /opt/flask-scratch
ENV FLASK_APP flask_scratch

RUN set -eux; \
  apt-get -y update; \
  apt-get install -y --no-install-recommends python3 python3-pip; \
  apt-get clean; \
  rm -rf /var/lib/apt/lists/*

WORKDIR $APP_DIR

COPY ./requirements.txt $APP_DIR

RUN pip3 install -r requirements.txt

COPY . $APP_DIR

ENTRYPOINT [ "python3", "flask_scratch/app.py" ]
