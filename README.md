# Self-hosted Azure Pipelines Agent

![MicroBadger Size](https://img.shields.io/microbadger/image-size/jmerle/self-hosted-azp-agent)

This repository contains the code to build a Docker image which runs a self-hosted Azure Pipelines agent that I use in my private projects. The goal is for the image to be as identical to the hosted Ubuntu 16.04 agent as possible, while only including the tools I need so the image size doesn't become enormous. I do that by manually selecting tools to install from the [microsoft/azure-pipelines-image-generation](https://github.com/microsoft/azure-pipelines-image-generation) repository, which contains the code that is used to provision the hosted agents. The expected environment variables are specified [here](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#environment-variables).

## Installed software

The following software is installed in the image:
- Basic CLI:
  - curl
  - dnsutils
  - file
  - ftp
  - iproute2
  - iputils-ping
  - jq
  - libcurl3
  - libicu55
  - libunwind8
  - locales
  - netcat
  - openssh-client
  - rsync
  - shellcheck
  - sudo
  - telnet
  - time
  - unzip
  - wget
  - zip
  - tzdata
- build-essential
- CMake (cmake version 3.12.4)
- Git (2.23.0)
- Git Large File Storage (LFS) (2.8.0)
- Google Chrome (Google Chrome 76.0.3809.132 )
- ImageMagick
- Azul Zulu OpenJDK (7) (openjdk version "1.7.0_232")
- Azul Zulu OpenJDK (8) (openjdk version "1.8.0_222")
- Azul Zulu OpenJDK (11) (openjdk version "11.0.4" 2019-07-16 LTS)
- Azul Zulu OpenJDK (12) (openjdk version "12.0.2" 2019-07-16)
- Ant (Apache Ant(TM) version 1.9.6 compiled on July 20 2018)
- Gradle 5.6.1
- Maven (Apache Maven 3.6.1 (d66c9c0b3152b2e69ee9bac180bb8fcc8e6af555; 2019-04-04T19:00:29Z))
- Node.js (v10.16.3)
- Bower (1.8.8)
- Grunt (grunt-cli v1.2.0)
- Gulp (CLI version: 2.2.0
Local version: Unknown)
- n (6.0.1)
- Parcel (1.12.3)
- TypeScript (Version 3.6.2)
- Webpack (4.39.3)
- Webpack CLI (3.3.7)
- Yarn (1.17.3)
- Python (Python 2.7.12)
- pip (pip 8.1.1 from /usr/lib/python2.7/dist-packages (python 2.7))
- Python3 (Python 3.5.2)
- pip3 (pip 8.1.1 from /usr/lib/python3/dist-packages (python 3.5))
- PyPy2 ([PyPy 7.1.0 with GCC 6.2.0 20160901])
- PyPy3 ([PyPy 7.0.0 with GCC 6.2.0 20160901])
