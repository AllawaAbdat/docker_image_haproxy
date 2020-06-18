#!/bin/sh

set -e

  docker build -t my-haproxy .
  docker run --rm --name haproxy-syntax-check my-haproxy haproxy -c -f /usr/local/etc/haproxy/haproxy.cfg
  docker run -d --name my-running-haproxy my-haproxy
  if docker ps | grep -q my-running-haproxy; then
        echo Docker my-running-haproxy found
        docker exec my-running-haproxy haproxy -v
    else
        echo Docker my-running-haproxy not found
        exit
  fi