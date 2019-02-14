FROM gitpod/workspace-full-vnc:latest

# Install dependencies
RUN apt-get update \
    && apt-get install -y matchbox twm \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

# USER gitpod

RUN cd /home/gitpod \
  && git clone https://github.com/op07n/qt3.git  \
  && cd qt3  \
  && yes yes | ./configure -thread -fast -nomake examples -nomake demos \
  && make || true


USER root  
