#!/bin/bash

# Fetch the latest release tag from the GitHub API
LATEST_RELEASE_TAG=$(curl -s "https://api.github.com/repos/syedishaq13129/deploy-a-amazon-ec2-using-githubaction/releases/latest" | grep -o '"tag_name": "[^"]*' | grep -o '[^"]*$')

# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://deepak30101997/$LATEST_RELEASE_TAG.zip /home/ec2-user

# Change the Working Directory
cd /home/ec2-user

# Remove all files except 2 Recently modified files
ls -t | tail -n +3 | xargs rm -f
