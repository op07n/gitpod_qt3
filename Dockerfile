FROM gitpod/workspace-full-vnc:latest

# Install dependencies
RUN apt-get update \
    && apt-get install -y matchbox twm \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

# USER gitpod



USER root  
