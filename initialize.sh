#!/bin/bash

echo 'Starting MongoDB, InfluxDB and Grafana...'
docker network create collectors-network
docker-compose -p collectors-stack up -d

echo 'Configuring Grafana...'
sleep 10
docker exec -it grafana-collectors grafana-cli admin reset-admin-password p455w0r4g
