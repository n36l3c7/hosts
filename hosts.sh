#!/usr/bin/env sh

TEMP_HOSTS="/etc/tmp_hosts"
HOSTS="/etc/hosts"

# CREATE TMP FILE
cp $HOSTS $TEMP_HOSTS

# OPERATION
OPERATION=$1
shift

if [ $OPERATION = "add" ]; then
    echo "add"
elif [ $OPERATION = "append" ]; then
    echo "append"
elif [ $OPERATION = "pop" ]; then
    echo "pop"
elif [ $OPERATION = "remove" ]; then
    echo "remove"
else
    echo "usage"
    exit 0
fi