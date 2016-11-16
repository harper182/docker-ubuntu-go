# Pull base image.
FROM queeno/ubuntu-desktop

# Install Chromium.
RUN \
  apt-get update && \
  apt-get install -y wget  && \
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
  echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
  apt-get update && \
  apt-get install -y google-chrome-stable
ADD go-agent
WORKDIR go-agent
RUN chmod a+x start.sh
CMD ['start.sh']
EXPOSE  
