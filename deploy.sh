#!/bin/sh

source ./secrets.sh

hugo --gc --minify
rclone sync --sftp-host $HOST --sftp-user $USER --sftp-pass $PASS public :sftp:
