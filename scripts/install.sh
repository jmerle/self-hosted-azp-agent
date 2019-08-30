#!/bin/bash
set -x

# See https://github.com/microsoft/azure-pipelines-image-generation/blob/master/images/linux/ubuntu1604.json

export SCRIPTS_DIR=azure-pipelines-image-generation/images/linux/scripts

export METADATA_FILE=/azp-agent-metadata
export HELPER_SCRIPTS=$SCRIPTS_DIR/helpers
export DEBIAN_FRONTEND=noninteractive

echo -e "The following software is installed in the image:" >> $METADATA_FILE

find $SCRIPTS_DIR -type f -exec chmod 777 {} \;

./$SCRIPTS_DIR/base/repos.sh

apt-get update
apt-get dist-upgrade -y
systemctl disable apt-daily.service
systemctl disable apt-daily.timer
systemctl disable apt-daily-upgrade.timer
systemctl disable apt-daily-upgrade.service
echo '* soft nofile 50000 \n* hard nofile 50000' >> /etc/security/limits.conf
echo 'session required pam_limits.so' >> /etc/pam.d/common-session
echo 'session required pam_limits.so' >> /etc/pam.d/common-session-noninteractiv

# ./$SCRIPTS_DIR/installers/7-zip.sh
# ./$SCRIPTS_DIR/installers/ansible.sh
# ./$SCRIPTS_DIR/installers/azcopy.sh
# ./$SCRIPTS_DIR/installers/azure-cli.sh
# ./$SCRIPTS_DIR/installers/azure-devops-cli.sh
./$SCRIPTS_DIR/installers/1604/basic.sh
# ./$SCRIPTS_DIR/installers/aws.sh
./$SCRIPTS_DIR/installers/build-essential.sh
# ./$SCRIPTS_DIR/installers/clang.sh
./$SCRIPTS_DIR/installers/cmake.sh
# ./$SCRIPTS_DIR/installers/docker-compose.sh
# ./$SCRIPTS_DIR/installers/docker-moby.sh
# ./$SCRIPTS_DIR/installers/docker.sh
# ./$SCRIPTS_DIR/installers/1604/dotnetcore-sdk.sh
# ./$SCRIPTS_DIR/installers/erlang.sh
# ./$SCRIPTS_DIR/installers/firefox.sh
# ./$SCRIPTS_DIR/installers/gcc.sh
./$SCRIPTS_DIR/installers/git.sh
# ./$SCRIPTS_DIR/installers/1604/go.sh
./$SCRIPTS_DIR/installers/google-chrome.sh
# ./$SCRIPTS_DIR/installers/google-cloud-sdk.sh
# ./$SCRIPTS_DIR/installers/haskell.sh
# ./$SCRIPTS_DIR/installers/heroku.sh
# ./$SCRIPTS_DIR/installers/hhvm.sh
./$SCRIPTS_DIR/installers/image-magick.sh
./$SCRIPTS_DIR/installers/java-tools.sh
# ./$SCRIPTS_DIR/installers/1604/kubernetes-tools.sh
# ./$SCRIPTS_DIR/installers/leiningen.sh
# ./$SCRIPTS_DIR/installers/1604/mercurial.sh
# ./$SCRIPTS_DIR/installers/miniconda.sh
# ./$SCRIPTS_DIR/installers/mono.sh
# ./$SCRIPTS_DIR/installers/mysql.sh
./$SCRIPTS_DIR/installers/nodejs.sh
# ./$SCRIPTS_DIR/installers/phantomjs.sh
# ./$SCRIPTS_DIR/installers/1604/php.sh
# ./$SCRIPTS_DIR/installers/pollinate.sh
# ./$SCRIPTS_DIR/installers/1604/powershellcore.sh
# ./$SCRIPTS_DIR/installers/ruby.sh
# ./$SCRIPTS_DIR/installers/rust.sh
# ./$SCRIPTS_DIR/installers/scala.sh
# ./$SCRIPTS_DIR/installers/sphinx.sh
# ./$SCRIPTS_DIR/installers/subversion.sh
# ./$SCRIPTS_DIR/installers/terraform.sh
# ./$SCRIPTS_DIR/installers/vcpkg.sh
# ./$SCRIPTS_DIR/installers/zeit-now.sh

# ./$SCRIPTS_DIR/installers/1604/android.sh
# ./$SCRIPTS_DIR/installers/1604/azpowershell.sh
# ./$SCRIPTS_DIR/helpers/containercache.sh
# ./$SCRIPTS_DIR/installers/1604/hosted-tool-cache.sh
./$SCRIPTS_DIR/installers/python.sh
# ./$SCRIPTS_DIR/installers/test-toolcache.sh

# ./$SCRIPTS_DIR/installers/boost.sh

cat $METADATA_FILE

rm -rf azure-pipelines-image-generation
