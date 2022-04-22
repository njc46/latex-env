FROM ubuntu
  
RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && echo "Etc/UTC" > /etc/timezone \
    && apt-get update \
    && apt-get upgrade -y 

RUN apt-get install gnupg software-properties-common -y \
    && apt-get install bc make python3 python3-pip git -y \
    && python3 -m pip install latex-dirtree-gen 

RUN apt-get install texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra -y 

RUN apt-get install -y pdftk

#RUN apt-get install -y openjdk-11-jdk

#RUN apt-get install -y wget unzip \
#    && wget https://services.gradle.org/distributions/gradle-7.4.2-bin.zip -P /tmp \ 
#    && unzip -d /opt/gradle /tmp/gradle-7.4.2-bin.zip \ 
#    && ln -s /opt/gradle/gradle-7.4.2 /opt/gradle/latest

#ENV GRADLE_HOME=/opt/gradle/latest
#ENV PATH=${GRADLE_HOME}/bin:${PATH}

#RUN git clone https://gitlab.com/pdftk-java/pdftk \
#    && cd pdftk \
#    && gradle shadowJar --no-daemon --no-watch-fs \
#    && alias pdftk='java -jar /pdftk/build/libs/pdftk-all.jar'

ENTRYPOINT [ "/bin/sh" ]
