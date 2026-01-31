# Project 19: Scheduled S3 Backup



## Goal

Automate the backup of system logs (`/var/log`) to Amazon S3 using a shell script and Cron jobs.



## Features

- Compresses `/var/log` into a `.tar.gz` archive.

- Appends the current timestamp to the filename.

- Uploads safely to an S3 bucket.

- Scheduled to run automatically via `crontab`.



## Script Usage

```bash

./backup.sh
# Project 19: Automated S3 Backups
This project uses a bash script and cron jobs to backup /var/log to AWS S3 every minute.
