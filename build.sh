#!/bin/bash

#docker pull metasploitframework/metasploit-framework:latest
docker build -t veil .
docker image prune -f