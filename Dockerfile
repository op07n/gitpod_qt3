FROM gitpod/workspace-full-vnc:latest

USER root

RUN  apt-get update \
  && apt-get install -y matchbox twm \
  && cd /home/gitpod \
  && git clone https://github.com/op07n/qt3.git  \
  && cd qt3  \
  && make 
