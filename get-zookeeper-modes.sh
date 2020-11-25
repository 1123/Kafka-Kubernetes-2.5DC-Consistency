for zk in zookeeper-1 zookeeper-2 zookeeper-3; do
  kubectl exec $zk -- bash -c 'echo srvr | nc localhost 2181'
done
