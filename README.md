Infrastructure Modules to Provision for Reusability. Keep modules generic and reusable.

✅ A Virtual Private Cloud (VPC) with a custom CIDR block
✅ A public subnet hosting an EC2 instance for web access
✅ A private subnet hosting an RDS MySQL database
✅ Security groups to control access between services
✅ Modular, reusable Terraform code structured for scale

1. Deploy network (VPC and its componenets)
2. Server (EC2 instance) and use terraform for_each or map functions to add 3 more ec2 instance
3. Deploy s3 storage
4. Deploy EKS cluster and worker nodes
5. Deploy IAM group
6. Ensure you delete after deployment using terraform destroy

Structure of creating modules
REPO - modules folder - (vpc module with 3 files, s3 module with 3 files, ec2 module with 3 files)

