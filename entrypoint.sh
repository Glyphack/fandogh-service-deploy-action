#!/bin/sh -l

username=$1
password=$2
image_name=$3
image_version=$4
path_to_service_file=$5

COLLECT_ERROR=True fandogh login --username $username --password $password

COLLECT_ERROR=True fandogh image init --name  $image_name
COLLECT_ERROR=True fandogh image publish --version $image_version

sed -i "s/VERSION>/$image_version/g" $path_to_service_file
sed -i "s/<IMAGE/$image_name/g" $path_to_service_file

COLLECT_ERROR=True fandogh service apply -f $path_to_service_file
