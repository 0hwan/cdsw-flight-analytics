#!/bin/bash
echo "Removing temporal directories from airlines in Hadoop file system."
hadoop fs -rm -r -f /tmp/airports
hadoop fs -rm -r -f /tmp/airlines
