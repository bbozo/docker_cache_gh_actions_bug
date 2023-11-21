FROM python:3.8.17-alpine3.18

RUN mkdir /root/mycache

RUN --mount=type=cache,target=/root/mycache \
    date >> /root/mycache/cache_file

RUN cat /root/mycache/cache_file 