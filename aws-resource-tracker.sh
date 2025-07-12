#!/bin/bash

######################
# Author: Saicharan Arra
# Date: 15 June, 2022
#
# Version: V1
#
# This script will report the aws resource usage.
##########################

set -x

# AWS-S3
# AWS-EC2
# AWS-Lambda
# AWS-IAM User
#########################

# Listing S3 buckets
aws s3 ls

# List Ec2 Instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List lambda
aws lambda list-functions

# List IAM-Users
aws iam list-users


# Crontab to run script
0 19 * * * /home/ec2-user/aws-script.sh >> /home/ec2-user/aws-script.log 2>&1

