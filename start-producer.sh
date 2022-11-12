#!/usr/bin/env bash

docker exec --interactive --tty kafka1 \
    kafka-console-producer \
    --broker-list kafka1:19092,kafka2:19093 \
    --topic otot-d