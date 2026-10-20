# Task 3: Data Ingestion with Apache Sqoop

## Project overview
This project demonstrates how to ingest relational data from MySQL into Hadoop HDFS using Apache Sqoop. It also includes an example export command to send processed data from HDFS back to MySQL.

**Important:** Sqoop requires a compatible Java, Hadoop, MySQL JDBC driver, and Sqoop installation. These commands are a project template and have not been executed in this chat. Run them in your configured Hadoop/Sqoop environment and capture your own output screenshots.

## Objective
- Create a sample MySQL database and table.
- Load sample sales records into MySQL.
- Import records from MySQL to HDFS using Sqoop.
- Verify the imported data in HDFS.
- Demonstrate an optional export from HDFS to MySQL.

## Project structure
```text
Task3_Data_Ingestion_with_Sqoop/
├── README.md
├── report.md
├── sql/
│   └── create_sales_db.sql
├── scripts/
│   └── sqoop_commands.sh
├── data/
│   └── sales.csv
└── screenshots/
    └── Add your genuine execution screenshots here
```

## Requirements
- Linux environment or a Hadoop-compatible lab environment
- Java and Hadoop configured
- Apache Sqoop installed
- MySQL server running
- MySQL JDBC connector JAR available to Sqoop
- A MySQL account permitted to connect from the machine running Sqoop

> Apache Sqoop is a legacy project and may not be included in modern Hadoop distributions. Use the versions provided by your college/lab or internship instructions.

## Step 1 — Create the database
Log in to MySQL and run:
```sql
source sql/create_sales_db.sql;
```
If `source` cannot find the file, use the full path to `create_sales_db.sql` or paste its SQL statements into the MySQL client.

## Step 2 — Configure the connection
Open `scripts/sqoop_commands.sh` and replace:
- `YOUR_MYSQL_HOST` with your MySQL server hostname/IP
- `YOUR_DB_USER` with your MySQL username
- `YOUR_DB_PASSWORD` with your password
- HDFS paths if your lab uses a different location

Do not publish real passwords in a public GitHub repository. Prefer prompting for credentials or using your lab's secure credential method.

## Step 3 — Import MySQL table into HDFS
Run the import command shown in `scripts/sqoop_commands.sh`. A successful import should create text output under `/user/hadoop/sqoop/sales` (or your chosen target directory).

Verify with:
```bash
hdfs dfs -ls /user/hadoop/sqoop/sales
hdfs dfs -cat /user/hadoop/sqoop/sales/part-m-*
```

## Step 4 — Optional export example
The export example in the script assumes that:
1. The target MySQL table `sales_export` exists.
2. The HDFS directory contains tab-delimited data in the expected column order.
3. The MySQL and HDFS schemas match.

Create the target table using the SQL file, prepare an HDFS directory with compatible records, then run the export command.

## Expected result
The imported HDFS files should contain the sales records from MySQL. The sample dataset has five rows. Actual command output depends on your environment.

## Submission checklist
- [ ] Update this README with your name and internship details if required.
- [ ] Run the SQL and Sqoop commands in a supported environment.
- [ ] Add genuine screenshots of successful commands and HDFS output in `screenshots/`.
- [ ] Review the internship portal's exact file/link requirements.
- [ ] Upload this project folder to GitHub and submit the repository URL if requested.

## Suggested GitHub repository name
`codtech-task-3-data-ingestion-sqoop`
