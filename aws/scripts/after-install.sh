#!/bin/bash
# set -xe

# Set the release tag name from the environment variable
#RELEASE_TAG_NAME=$CODEDEPLOY_ENV_RELEASE_TAG_NAME

# Fetch the latest release tag from the GitHub API
LATEST_RELEASE_TAG=$(curl -s "https://api.github.com/repos/syedishaq13129/deploy-a-amazon-ec2-using-githubaction/releases/latest" | grep -o '"tag_name": "[^"]*' | grep -o '[^"]*$')

# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://codedeployanil0605/$LATEST_RELEASE_TAG.zip /home/ec2-user

# Ensure the ownership permissions are correct.
# chown -R tomcat:tomcat /usr/local/tomcat9/webapps
