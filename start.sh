#!/bin/sh
set -e
/etc/init.d/go-agent start
ps -ef | grep go*