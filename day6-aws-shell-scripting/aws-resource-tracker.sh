#!/usr/bin/env bash
# This script will list all the AWS resources in the account
# and write the output to a file
# Author: Naineel Soyantar
# Version: 1.0

set -e # Exit immediately if a command exits with a non-zero status.
set -x # Print commands and their arguments as they are executed.
set -o pipefail # Check the exit status of the command on the left side of the pipe

#Check for AWS S3
{
    echo "Printing list of s3 buckets";
    aws s3 ls;

  #Check for AWS EC2
  echo "Printing list of ec2 instances";
  aws ec2 describe-instances | jq '.Reservations[].Instances[] | {InstanceId: .InstanceId, InstanceType: .InstanceType, State: .State.Name, PublicIpAddress: .PublicIpAddress, PrivateIpAddress: .PrivateIpAddress}';

  #Check for AWS Lambda
  echo "Printing list of ec2 instances";
  aws lambda list-functions;

  #Check for AWS IAM
  echo "Printing list of IAM users";
  aws iam list-users;
} >> aws-resources.txt # block write to a file
