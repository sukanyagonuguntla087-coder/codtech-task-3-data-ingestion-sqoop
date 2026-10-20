# Project Report: Data Ingestion with Apache Sqoop

## 1. Introduction
Data ingestion is the process of moving data from a source system into a destination platform for storage and analysis. Apache Sqoop was designed to transfer bulk data between relational databases and Hadoop.

## 2. Aim
To demonstrate importing sales records from a MySQL relational database into Hadoop Distributed File System (HDFS) using Apache Sqoop.

## 3. Tools and technologies
- MySQL: relational database and source table
- Apache Sqoop: bulk data transfer tool
- Hadoop HDFS: destination distributed file system
- SQL and Bash: database setup and command automation

## 4. Methodology
1. Create a database named `sqoop_demo`.
2. Create the `sales` table and insert five example records.
3. Configure the JDBC connection and Sqoop credentials.
4. Run `sqoop import` to transfer the table to HDFS.
5. Verify the output using HDFS list and cat commands.
6. Optionally export compatible HDFS data to a MySQL table.

## 5. Expected output
The HDFS output should contain five rows corresponding to Keyboard, Mouse, Monitor, USB Cable, and Headphones. The exact file name and command output depend on the environment.

## 6. Advantages
- Supports bulk transfer between relational databases and Hadoop.
- Reduces the need to write a custom transfer program for basic imports.
- Supports import and export workflows.
- Can use parallel mappers for larger datasets when the table and environment support it.

## 7. Limitations
- Requires compatible Java, Hadoop, Sqoop, and JDBC components.
- Credentials and network permissions must be configured securely.
- Apache Sqoop is a legacy tool; compatibility varies across modern distributions.

## 8. Conclusion
This project provides a reproducible template for transferring structured sales data from MySQL into HDFS using Sqoop. Successful execution should be verified in the user's own lab environment, with genuine screenshots included as evidence.
