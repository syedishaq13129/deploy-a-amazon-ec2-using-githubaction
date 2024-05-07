#!/bin/bash
# set -xe

# Set the release tag name from the environment variable
#RELEASE_TAG_NAME=$CODEDEPLOY_ENV_RELEASE_TAG_NAME

# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://codedeployanil0605/syed_3.0 /home/ec2-user

# Ensure the ownership permissions are correct.
# chown -R tomcat:tomcat /usr/local/tomcat9/webapps
