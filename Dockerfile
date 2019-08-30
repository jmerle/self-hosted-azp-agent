FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    ca-certificates \
    lsb-release \
    apt-transport-https \
    apt-utils \
    software-properties-common \
    git \
    curl \
    wget \
    rsync \
    libunwind8 \
    libicu55

RUN git config --global user.email "dummy@example.com" \
    && git config --global user.name "self-hosted-azp-agent"

RUN git clone https://github.com/microsoft/azure-pipelines-image-generation.git

COPY patches azure-pipelines-image-generation
RUN cd azure-pipelines-image-generation && git apply *.patch && cd ..

COPY ./scripts/install.sh .
RUN chmod +x install.sh && ./install.sh

WORKDIR /azp

COPY ./scripts/start.sh .
RUN chmod +x start.sh
CMD ["./scripts/start.sh"]
