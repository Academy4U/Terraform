#!/bin/bash

echo "Press enter 3 times"

ssh-keygen

aws ec2 import-key-pair --key-name "terraform-eks" --public-key-material file://./id_rsa.pub

echo "Key imported!"
