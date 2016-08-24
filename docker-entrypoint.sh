#!/bin/bash
set -e

./sbin/start-master.sh
./sbin/start-slave.sh spark://$(hostname):7077
./sbin/start-thriftserver.sh --master spark://$(hostname):7077

echo "Thrift server is starting..."
tail -f logs/spark--org.apache.spark.sql.hive.thriftserver.* | while read LOGLINE
do
   [[ "${LOGLINE}" == *"Starting ThriftBinaryCLIService on port"* ]] && pkill -P $$ tail
done

echo "Importing data..."
./bin/beeline -u jdbc:hive2://localhost:10000 -f /docker-entrypoint-initdb.d/northwind.spark.sql
echo "Ready!"
tail -f /usr/spark-2.0.0/logs/spark--org.apache.spark.deploy.master.Master*

#exec "$@"
