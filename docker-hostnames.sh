#!/usr/bin/env sh

sed -i '/\#dockerhostnames/d' /etc/hosts &&
  [ "$(docker ps -q)" ] &&
  docker ps -q |
    xargs -n 1 docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}} {{ .Name }} #dockerhostnames' |
    sed 's/ \// /' |
    tee -a /etc/hosts
