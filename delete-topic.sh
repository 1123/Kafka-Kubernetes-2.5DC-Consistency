kubectl exec -n dc1 kafka-1 -- \
  bash -c 'kafka-topics --bootstrap-server kafka-1:9092 --delete --topic test'
