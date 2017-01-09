#!/bin/bash
aws ec2 disassociate-address --association-id eipassoc-e2cdd599
aws ec2 release-address --allocation-id eipalloc-1a13357d
aws ec2 terminate-instances --instance-ids i-07d1fc4f9b8c1bbf0
aws ec2 wait instance-terminated --instance-ids i-07d1fc4f9b8c1bbf0
aws ec2 delete-security-group --group-id sg-7351850b
aws ec2 disassociate-route-table --association-id rtbassoc-ff4dc699
aws ec2 delete-route-table --route-table-id rtb-5a511c3d
aws ec2 detach-internet-gateway --internet-gateway-id igw-75e8af11 --vpc-id vpc-bff849d8
aws ec2 delete-internet-gateway --internet-gateway-id igw-75e8af11
aws ec2 delete-subnet --subnet-id subnet-4f8b6206
aws ec2 delete-vpc --vpc-id vpc-bff849d8
echo If you want to delete the key-pair, please do it manually.
