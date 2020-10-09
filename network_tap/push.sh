#! /bin/bash
file=$1
tap_name=${TAP_NAME:-lc_tap}
oid=$OID
token=$TOKEN
retention=${RETENTION:-7}

if [ -z "$file" ]; then
    echo "no file to upload specified"
    exit 1
fi
if [ -z "$oid" ]; then
    echo "no OID environment specified"
    exit 1
fi
if [ -z "$token" ]; then
    echo "no TOKEN environment specified"
    exit 1
fi

limacharlie artifacts upload --hint pcap --source $tap_name --oid $oid --access-token $token --days-retention $retention $file

echo "file $file uploaded"
rm $file