
FROM docker.io/library/python:3.12.5-alpine3.20

ENV WORKDIR=/workdir
WORKDIR ${WORKDIR}

RUN set -eu; apk add --no-cache \
        git \
        ca-certificates \
        ffmpeg \
        openssl \
        aria2 \
    ; 

RUN mkdir -p ${WORKDIR}/sources/github.com/pandorasNox
RUN set -eu; git clone https://github.com/pandorasNox/fork_ytdl-org_youtube-dl.git ${WORKDIR}/sources/github.com/pandorasNox/fork_ytdl-org_youtube-dl

WORKDIR ${WORKDIR}/sources/github.com/pandorasNox/fork_ytdl-org_youtube-dl

# ENTRYPOINT [ "sh", "-c", "python -m youtube_dl --help" ]
# ENTRYPOINT [ "ash", "-c" ]
ENTRYPOINT [ "python", "-m", "youtube_dl" ]
