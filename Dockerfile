FROM ubuntu
RUN apt-get update \
  && apt-get install -y --allow-unauthenticated squid3
COPY squid.conf /etc/squid3/squid.conf
CMD ["squid","-N","-f","/etc/squid3/squid.conf"]
EXPOSE 3128
