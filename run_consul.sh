#!/bin/bash
set -e

docker run -d --name=dev-consul -e CONSUL_BIND_INTERFACE=eth0 consul

