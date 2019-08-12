FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y wget pwgen

ARG RPC_USER
ARG RPC_PASSWORD
ENV RPC_USER ${RPC_USER:-soverain}
# Create a random password if the user doesn't set one
ENV RANDOM_PASS `pwgen -Bs1 12`
ENV RPC_PASSWORD ${RPC_PASSWORD:-$RANDOM_PASS}

# Build the project
RUN wget https://github.com/soveraintg/Soverain/releases/download/v1.0.3.7/soverain-1.0.3-x86_64-linux-gnu.tar.gz -O soverain-1.0.3.tar.gz
RUN tar -xvf soverain-1.0.3.tar.gz
RUN mkdir -p /root/.soverain/
RUN echo "rpcuser=$RPC_USER\nrpcpassword=$RPC_PASSWORD" > /root/.soverain/soverain.conf

EXPOSE 18976 18977 18978 18979

WORKDIR /soverain-1.0.3/bin
CMD ["/soverain-1.0.3/bin/soveraind"]

