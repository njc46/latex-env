FROM ubuntu:bionic

RUN apt-get update && apt-get install gnupg software-properties-common -y && apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0 \
    && apt-add-repository https://cli.github.com/packages

RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && echo "Etc/UTC" > /etc/timezone \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install bc texlive-full make gh python3.7 python3-pip git texlive-latex-extra texlive-fonts-recommended xzdec -y \
    && python3 -m pip install latex-dirtree-gen \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/bin/sh" ]
