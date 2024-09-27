#!/bin/bash
######################
#Author:-Ashik
#date :-23rd sep 2024
#This script i sused to check the resource usuage of our AWS account
#####################

#List all the ec2 instances

echo "This are the list of ec2 Instances"

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'  >>ammi.txt

#List all the S3 bucket

echo "This are the list of S3 buckets"

aws s3 ls >>ammi.txt

echo "This are the list of IAM users"

aws iam list-users >>ammi.txt
