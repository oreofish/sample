#!/bin/bash

loop=$((10))
while [ $((--loop)) -gt 0 ];do
	bundle install && exit 0
done
