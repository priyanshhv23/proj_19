#!/bin/bash



# Variables

SOURCE_DIR="/var/log"

BUCKET_NAME="priyansh-backup-bucket-name-12345"

DATE=$(date +%Y-%m-%d-%H-%M-%S)

BACKUP_FILE="logs-backup-$DATE.tar.gz"



# 1. Compress the logs

echo "Creating backup of $SOURCE_DIR..."

tar -czf $BACKUP_FILE $SOURCE_DIR 2>/dev/null



# 2. Upload to S3

echo "Uploading to S3..."

/usr/local/bin/aws s3 cp $BACKUP_FILE s3://$BUCKET_NAME/



# 3. Clean up local file to save space

rm $BACKUP_FILE



echo "Backup completed successfully!"
