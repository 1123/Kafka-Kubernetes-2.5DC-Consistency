echo "registered brokers: "
kubectl exec zookeeper-1 -- \
  bash -c 'echo "ls /brokers/ids" | zookeeper-shell localhost:2181' | \
  tail -n 1
echo "controller:"
kubectl exec zookeeper-1 -- \
  bash -c 'echo "get /controller" | zookeeper-shell localhost:2181' | \
  tail -n 1
