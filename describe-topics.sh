#!/usr/bin/env bash

# List existing topics
docker exec kafka1 kafka-topics \
    --bootstrap-server kafka1:19092, kafka2:19093, kafka3:19094 \
    --describe --topic otot-d