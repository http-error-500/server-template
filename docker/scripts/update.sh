#!/bin/bash

cd ~/docker/project_name
eval `ssh-agent -s`; ssh-add ~/.ssh/github_deploy; git pull

cd ..
docker compose up --force-recreate --build -d dco_main