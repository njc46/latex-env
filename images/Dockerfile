FROM alpine:latest

RUN apk add -U make

# dependencies for texlive
RUN apk add -U --repository http://dl-3.alpinelinux.org/alpine/edge/main \
    poppler harfbuzz-icu

# zziplib (found in edge/community repository) is a dependency to texlive-luatex
RUN apk add -U --repository http://dl-3.alpinelinux.org/alpine/edge/community \
    zziplib

RUN apk add -U --repository http://dl-3.alpinelinux.org/alpine/edge/testing \
    texlive-full

RUN ln -s /usr/bin/mktexlsr /usr/bin/mktexlsr.pl

RUN mktexlsr && updmap -sys && initexmf --admin --mkmaps
RUN mktexpk --mfmode / --bdpi 600 --mag 0+486/600 --dpi 486 fvmr8r

ENTRYPOINT [ "/bin/sh" ]