#!/bin/bash

set -e -u

dc=

broker=$1
brokerId=${broker: -1}
if [[ "$brokerId" == "2" || "$brokerId" == "4" ]]; then
  dc=dc2
else
  dc=dc1
fi

kubectl exec -n $dc $broker -- \
  bash -c "kafka-configs \
    --bootstrap-server $broker:9092 \
    --describe \
    --entity-type brokers \
    --entity-name $brokerId"
