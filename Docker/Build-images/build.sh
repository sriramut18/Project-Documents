#!/bin/bash
echo `cd enable-ssh-systemd; docker build -t centos-ssh .`
sleep 20;
echo `cd automation-image; docker build -t centos-automation .`