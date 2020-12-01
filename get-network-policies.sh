#!/bin/bash

for dc in dc1 dc2 dc3; do
  kubectl get -n $dc networkpolicies
done
