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

ENTRYPOINT [ "/bin/sh" ]
