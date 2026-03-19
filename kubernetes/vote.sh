#!/bin/bash

case $1 in
  start )
    for MANIFEST in $(ls *yaml); do
      oc -n voting apply -f $MANIFEST
    done
    ;;
  stop )
    for MANIFEST in $(ls *yaml); do
      oc -n voting delete -f $MANIFEST
    done
    ;;
  * )
    echo "$0 [start|stop]"
    ;;
esac

