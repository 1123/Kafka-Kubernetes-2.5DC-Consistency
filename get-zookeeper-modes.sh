for zk in 1 2 3; do
  kubectl exec -n dc$zk zookeeper-$zk -- bash -c 'echo srvr | nc localhost 2181'
done
