FROM ubuntu:bionic

RUN apt-get update && apt-get install gnupg software-properties-common -y && apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0 \
    && apt-add-repository https://cli.github.com/packages

RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && echo "Etc/UTC" > /etc/timezone \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install bc texlive-full make gh python3.7 python3-pip git texlive-latex-extra texlive-fonts-recommended xzdec -y \
    && python3 -m pip install latex-dirtree-gen 

RUN apt-get install -y openjdk-11-jdk

RUN apt-get install -y wget unzip \
    && wget https://services.gradle.org/distributions/gradle-7.3.2-bin.zip -P /tmp \ 
    && unzip -d /opt/gradle /tmp/gradle-7.3.2-bin.zip \ 
    && ln -s /opt/gradle/gradle-7.3.2 /opt/gradle/latest

ENV GRADLE_HOME=/opt/gradle/latest
ENV PATH=${GRADLE_HOME}/bin:${PATH}

RUN git clone https://gitlab.com/pdftk-java/pdftk \
    && cd pdftk \
    && gradle shadowJar \
    && alias pdftk='java -jar /pdftk/build/libs/pdftk-all.jar'

ENTRYPOINT [ "/bin/sh" ]
