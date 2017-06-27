FROM debian

RUN apt-get update && \
    apt-get install -y ruby ruby-dev build-essential zlib1g-dev && \
    gem install --no-ri --no-rdoc riemann-rabbitmq -v=0.1.2

COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
