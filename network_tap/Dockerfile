FROM python:3

RUN apt-get update && apt-get install tcpdump -y
RUN pip install limacharlie

# Environment Variables
# OID = LimaCharlie Organization ID
# TOKEN = LimaCharlie Ingestion Token
# TAP_NAME (optional, default lc_tap) = name to identity as a source of the pcap
# RETENTION (optional, default 7) = number of days to retain the pcap in LimaCharlie
# INTERFACE = name of the network interface to capture from

ADD push.sh push.sh
ADD capture.sh capture.sh
RUN mkdir captures

CMD [ "./capture.sh" ]