#!/usr/bin/env bash
helm upgrade -i --namespace $1 --recreate-pods -f values-$1.yaml $1-redis stable/redis