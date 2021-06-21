#!/bin/bash

#variable:_S3_HOST__

S3_HOST="1.1.1.1"
S3_SECRET_KEY="xP1I3XBjqMnt62dZA9c2wXXCmLVPaMUOmMBt1M63"
S3_ACCESS_KEY="5372OS9A1ZR5UD6WWE6O"


function loki_install(){

    kubectl create ns loki
    kubectl apply -n  loki -f loki-redis/
    sleep 30
    #sleep 120
    sed -i "s#__S3_SECRET_KEY__#${S3_SECRET_KEY}#g" loki-system/configmap.yaml
    sed -i "s#__S3_ACCESS_KEY__#${S3_ACCESS_KEY}#g" loki-system/configmap.yaml
    sed -i "s#__S3_HOST__#${S3_HOST}#g" ./loki-system/configmap.yaml

    kubectl apply -n loki -f loki-frontend/
    kubectl apply -n loki -f loki-system/
    kubectl apply -n loki -f loki-gateway/
}

function loki_cleanup(){

    kubectl delete -n loki -f loki-frontend/
    kubectl delete -n loki -f loki-system/
    kubectl delete -n loki -f loki-gateway/
    kubectl delete -n loki -f loki-system/
    sleep 30
    kubectl delete -n loki -f loki-redis/
}

loki_install
#loki_cleanup
