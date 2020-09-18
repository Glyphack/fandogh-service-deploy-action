#!/bin/sh -l

username=$1
password=$2
path_to_service_file=$5

export IMAGE_URL=$3
export IMAGE_VERSION=$4

COLLECT_ERROR=True fandogh login --username $username --password $password

COLLECT_ERROR=True fandogh image init --name  $IMAGE_URL
COLLECT_ERROR=True fandogh image publish --version $IMAGE_VERSION

COLLECT_ERROR=True fandogh service apply -f $path_to_service_file -p IMAGE_URL -p IMAGE_VERSION
