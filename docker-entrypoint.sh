#!/bin/bash
set -e

./sbin/start-master.sh
./sbin/start-slave.sh spark://$(hostname):7077
./sbin/start-thriftserver.sh \
  --hiveconf hive.server2.thrift.port=10000 \
  --hiveconf hive.server2.thrift.bind.host=localhost \
  --master spark://$(hostname --ip-address):7077

tail -f /usr/spark-2.0.0/logs/spark--org.apache.spark.deploy.master.Master*

#exec "$@"
