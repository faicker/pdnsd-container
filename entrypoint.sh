#!/bin/sh

conf_file=/etc/pdnsd.conf
puid=$(id -u)
pgid=$(id -g)
fuid=$(stat -c '%u' $conf_file)
fgid=$(stat -c '%g' $conf_file)


change_file_owner() {
    local file=$1
    local uid=$2
    local gid=$3

    echo "change $file owner uid/gid to $uid/$gid"
    chown $uid:$gid $file
}

pre_start() {
    # change uid/gid to process uid/gid
    change_file_owner $conf_file $puid $pgid
}

pre_stop() {
    # recover
    change_file_owner $conf_file $fuid $fgid
}

trap 'pre_stop' SIGTERM
trap 'pre_stop' SIGINT

pre_start
exec pdnsd &
wait
