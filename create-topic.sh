kubectl exec -n dc1 kafka-1 -- \
  bash -c 'kafka-topics --bootstrap-server kafka-1:9092 --create --topic test --replication-factor 4 --partitions 4'
