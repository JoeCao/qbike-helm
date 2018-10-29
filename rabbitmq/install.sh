#!/usr/bin/env bash
if [ -n "$1" ]; then
    helm upgrade -i --namespace $1 --recreate-pods -f values-$1.yaml $1-rabbitmq stable/rabbitmq
else
    echo "使用方法 install.sh + namespace(k8s中配置的）"
fi