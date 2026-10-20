#!/usr/bin/env bash
# Apache Sqoop sample commands for Task 3.
# Replace placeholders before running. Do not commit real credentials to GitHub.

MYSQL_HOST="YOUR_MYSQL_HOST"
MYSQL_USER="YOUR_DB_USER"
MYSQL_PASSWORD="YOUR_DB_PASSWORD"
DATABASE="sqoop_demo"

# Import the MySQL sales table into HDFS.
sqoop import \
  --connect "jdbc:mysql://${MYSQL_HOST}:3306/${DATABASE}" \
  --username "${MYSQL_USER}" \
  --password "${MYSQL_PASSWORD}" \
  --table sales \
  --target-dir /user/hadoop/sqoop/sales \
  --delete-target-dir \
  --num-mappers 1 \
  --fields-terminated-by ','

# Verify imported data.
hdfs dfs -ls /user/hadoop/sqoop/sales
hdfs dfs -cat /user/hadoop/sqoop/sales/part-m-*

# OPTIONAL EXPORT:
# Prepare /user/hadoop/sqoop/sales_export with tab-delimited rows matching
# the sales_export table's column order, then uncomment and adapt this command.
#
# sqoop export \
#   --connect "jdbc:mysql://${MYSQL_HOST}:3306/${DATABASE}" \
#   --username "${MYSQL_USER}" \
#   --password "${MYSQL_PASSWORD}" \
#   --table sales_export \
#   --export-dir /user/hadoop/sqoop/sales_export \
#   --input-fields-terminated-by '\\t' \
#   --num-mappers 1
