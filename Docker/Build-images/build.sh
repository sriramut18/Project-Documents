#!/bin/bash
cd enable-ssh-systemd; docker build -t centos-ssh .
cd automation-image; docker build -t centos-automation .