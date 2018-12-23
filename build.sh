#!/bin/bash

#docker pull metasploitframework/metasploit-framework:latest
docker build -t isaudits/veil .
docker image prune -f