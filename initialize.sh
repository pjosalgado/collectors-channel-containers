#!/bin/bash

echo 'Starting MongoDB, InfluxDB and Grafana...'
docker network create cc-network
docker-compose -p cc-stack up -d

echo 'Configuring Grafana...'
sleep 10
docker exec -it grafana-cc grafana-cli admin reset-admin-password p455w0r4g
