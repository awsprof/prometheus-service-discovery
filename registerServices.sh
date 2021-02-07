#!/bin/bash
docker exec dev-consul-server consul services register /consul/config/prometheus.json
docker exec dev-consul-server consul services register /consul/config/node-exporter.json
docker exec dev-consul-server consul services register /consul/config/grafana.json
docker exec dev-consul-server consul services register /consul/config/cadvisor.json
docker exec dev-consul-server consul services register /consul/config/alert-manager.json

