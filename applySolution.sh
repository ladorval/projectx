#!/bin/bash

if ! [ -x "$(command -v git)" ]; then
    sudo yum -y instsll git
fi

if [ ! -d JenkinsInstall ];
    then git clone https://github.com/ladorval/JenkinsInstall.git
fi
cd JenkinsInstall
sh jenkins-rebuild
