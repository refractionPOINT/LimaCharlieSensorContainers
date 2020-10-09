#! /bin/bash

pcap_size=${PCAP_SIZE:-100}
rotate=${ROTATE:-30}
interface=${INTERFACE:-eth1}
options=$TCPDUMP_OPTIONS

tcpdump -C $pcap_size -G $rotate --interface=$interface -w captures/cap.pcap -z ./push.sh $options