FROM python:3.8.17-alpine3.18

# ie for in-docker ccache, build artifacts etc
RUN mkdir /root/mycache

COPY . .

RUN --mount=type=cache,target=/root/mycache \
    date >> /root/mycache/cache_file &&  \
    cat /root/mycache/cache_file