#!/bin/bash

go run mage.go -v binary docker

echo "Tagging"
docker tag wrouesnel/postgres_exporter:latest everesio/postgres_exporter:latest
docker push everesio/postgres_exporter:latest
