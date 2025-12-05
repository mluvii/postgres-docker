#!/bin/bash

PGVER=16
docker build --build-arg PGVER=$PGVER -f Dockerfile -t mluvii/postgres:$PGVER .
