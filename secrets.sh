#!/bin/sh

# Host to deploy to
HOST=sftp.example.org

# User to use to connect to host 
USER=myuser

# password obscured with rclone 
# Use `echo "PASSWORD" | rclone obscure -` to generate from a password
PASS=rclone_obscured_password
