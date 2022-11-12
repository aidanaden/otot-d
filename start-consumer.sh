#!/usr/bin/env bash

docker exec kafka1 kafka-console-consumer \
    --bootstrap-server kafka3:19094,kafka1:19092 \
    --topic otot-d \
    --from-beginning