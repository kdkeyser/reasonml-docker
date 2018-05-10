FROM ubuntu:16.04
MAINTAINER Koen De Keyser <koen.dekeyser@gmail.com>

RUN apt-get update -q && apt-get install -y --no-install-recommends \
      software-properties-common \
      wget \
      fish \
      tmux \
      vim-gnome \
      libnotify4 \
      libxkbfile1 \
      libxss1 \
      libxtst6 \
      libnss3 \
      libtinfo-dev \
      zip \
      unzip \
      net-tools \
      curl \
      sudo \
      man \
      firefox \
      xvfb \
      libsecret-1-0 \
      openjdk-8-jre \
      make \
      git \
      gcc \
      g++ \
      ssh

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list

RUN apt-get update -q && apt-get install -y --no-install-recommends \
      google-chrome-stable \
      nodejs

RUN groupadd -g 1000 developer && useradd -u 1000 -g 1000 developer
RUN echo "developer:developer" | chpasswd 
RUN adduser developer sudo 
RUN mkdir /home/developer

RUN chown developer /home/developer

ENV VSCODE_VERSION	1.23.0
RUN wget --progress=bar:force -O /tmp/vscode.deb https://vscode-update.azurewebsites.net/$VSCODE_VERSION/linux-deb-x64/stable/
RUN dpkg -i /tmp/vscode.deb && rm /tmp/vscode.deb

ENV SELENIUM_VERSION	3.11.0
RUN wget --progress=bar:force  https://goo.gl/s4o9Vx -O selenium-server-standalone-$SELENIUM_VERSION.jar
RUN chmod +x selenium-server-standalone-$SELENIUM_VERSION.jar
RUN mv selenium-server-standalone-$SELENIUM_VERSION.jar /usr/local/bin

ENV GECKODRV_VERSION	0.20.1
RUN wget https://github.com/mozilla/geckodriver/releases/download/v$GECKODRV_VERSION/geckodriver-v$GECKODRV_VERSION-linux64.tar.gz
RUN tar -xvzf geckodriver-v$GECKODRV_VERSION-linux64.tar.gz
RUN chmod +x geckodriver
RUN mv geckodriver /usr/local/bin/

ENV CHROMEDRV_VERSION	2.38
RUN wget https://chromedriver.storage.googleapis.com/$CHROMEDRV_VERSION/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
RUN mv chromedriver /usr/local/bin

ENV REASONCLI_VERSION	3.1.0
RUN npm install npm@latest -g
RUN npm install -g --unsafe-perm reason-cli@$REASONCLI_VERSION-linux
RUN npm install -g --unsafe-perm bs-platform
RUN npm install -g --unsafe-perm yarn

USER developer

RUN echo 0 | code --install-extension freebroccolo.reasonml

