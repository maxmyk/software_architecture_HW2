#!/bin/bash

docker run -itd --name first-hazelcast-node --rm -e HZ_NETWORK_PUBLICADDRESS=172.17.0.1:5701 -e HZ_CLUSTERNAME=hazelcast-cluster -p 5701:5701 hazelcast/hazelcast:5.3.6 &
docker run -itd --name second-hazelcast-node --rm -e HZ_NETWORK_PUBLICADDRESS=172.17.0.1:5702 -e HZ_CLUSTERNAME=hazelcast-cluster -p 5702:5701 hazelcast/hazelcast:5.3.6 &
docker run -itd --name third-hazelcast-node --rm -e HZ_NETWORK_PUBLICADDRESS=172.17.0.1:5703 -e HZ_CLUSTERNAME=hazelcast-cluster -p 5703:5701 hazelcast/hazelcast:5.3.6 &

wait
