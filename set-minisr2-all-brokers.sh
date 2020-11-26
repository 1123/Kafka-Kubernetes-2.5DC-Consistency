#!/bin/bash

set -e -u

for k in kafka-1 kafka-2 kafka-3 kafka-4; do
  ./set-minisr.sh $k 2
done
