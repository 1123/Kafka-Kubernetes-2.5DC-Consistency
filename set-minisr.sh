#!/bin/bash

set -e -u

dc=

broker=$1
minisr=$2
brokerId=${broker: -1}
if [[ "$brokerId" == "2" || "$brokerId" == "4" ]]; then
  dc=dc2
else
  dc=dc1
fi

echo "Setting min.insync.replicas=$minisr for broker $brokerId"

kubectl exec -n $dc $broker -- \
  bash -c "kafka-configs \
    --bootstrap-server $broker:9092 \
    --alter \
    --entity-type brokers \
    --entity-name $brokerId \
    --add-config min.insync.replicas=$minisr"
