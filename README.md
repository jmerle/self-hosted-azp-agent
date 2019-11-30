# Self-hosted Azure Pipelines Agent

![MicroBadger Size](https://img.shields.io/microbadger/image-size/jmerle/self-hosted-azp-agent)

This repository contains the code to build a Docker image which runs a self-hosted Azure Pipelines agent that I use in my private projects. The goal is for the image to be as identical to the hosted Ubuntu 18.04 agent as possible, while only including the tools I need so the image size doesn't become enormous. I do that by manually selecting tools to install from the [microsoft/azure-pipelines-image-generation](https://github.com/microsoft/azure-pipelines-image-generation) repository, which contains the code that is used to provision the hosted agents. The expected environment variables are specified [here](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#environment-variables).

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
- Clang 6.0 (clang version 6.0.1-svn334776-1~exp1~20190309042703.125 (branches/release_60))
- CMake (cmake version 3.12.4)
- .NET Core SDK:
  - 3.0.101
  - 2.2.402
  - 2.1.802
- GNU C++ 7.4.0
- Git (2.24.0)
- Git Large File Storage (LFS) (2.9.1)
- Google Chrome (Google Chrome 78.0.3904.108 )
- ImageMagick
- Azul Zulu OpenJDK (7) (openjdk version "1.7.0_242")
- Azul Zulu OpenJDK (8) (openjdk version "1.8.0_232")
- Azul Zulu OpenJDK (11) (openjdk version "11.0.5" 2019-10-15 LTS)
- Azul Zulu OpenJDK (12) (openjdk version "12.0.2" 2019-07-16)
- Ant (Apache Ant(TM) version 1.10.5 compiled on March 28 2019)
- Gradle 6.0.1
- Maven (Apache Maven 3.6.2 (40f52333136460af0dc0d7232c0dc0bcf0d9e117; 2019-08-27T15:06:16Z))
- Node.js (v12.13.1)
- Grunt (grunt-cli v1.2.0)
- Gulp (CLI version: 2.2.0
Local version: Unknown)
- n (6.1.3)
- Parcel (1.12.4)
- TypeScript (Version 3.7.2)
- Webpack (4.41.2)
- Webpack CLI (3.3.10)
- Yarn (1.19.2)
- Python (Python 2.7.15+)
- pip (pip 9.0.1 from /usr/lib/python2.7/dist-packages (python 2.7))
- Python3 (Python 3.6.9)
- pip3 (pip 9.0.1 from /usr/lib/python3/dist-packages (python 3.6))
- PyPy2 ([PyPy 7.1.0 with GCC 6.2.0 20160901])
- PyPy3 ([PyPy 7.2.0 with GCC 6.2.0 20160901])
