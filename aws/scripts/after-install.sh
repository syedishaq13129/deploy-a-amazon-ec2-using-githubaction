#!/bin/bash
# set -xe


# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://codedeployanil0605/deploytest1.zip /home/ec2-user

# Ensure the ownership permissions are correct.
# chown -R tomcat:tomcat /usr/local/tomcat9/webapps
