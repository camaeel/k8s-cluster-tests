#!/bin/bash

if [[ -f ./.env ]]; then
  . ./.env
fi

kubectl delete ns -l chainsaw-test
kubectl delete clusterissuer -l chainsaw-test

chainsaw test  --pause-on-failure --config=./config.yaml --values values.yaml $@
