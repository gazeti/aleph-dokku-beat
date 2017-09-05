FROM pudo/aleph:latest

ENV ELASTICSEARCH_INDEX aleph
ENV ALEPH_SETTINGS /aleph/contrib/docker_settings.py

RUN mkdir /app

WORKDIR /aleph

CMD celery -A aleph.queue beat -s /var/run/celerybeat-schedule
