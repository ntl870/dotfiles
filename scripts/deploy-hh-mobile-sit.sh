#!/bin/bash
git pull && yarn build:sit && aws s3 cp ./build s3://healthhub-sit-web/healthhubng/ --recursive
