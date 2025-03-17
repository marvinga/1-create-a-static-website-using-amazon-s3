# 1-create-a-static-website-using-amazon-s3

- This setup will create a fully functional S3-hosted static website with public access.
- Very simple project just to get you started. 

- Prerequisites
    - Before deploying the static website, ensure you have the following:

- ✅ AWS Account 
- ✅ IAM User with Admin Privileges 
- ✅ AWS Credentials
- ✅ AWS CLI 
- ✅ Terraform 

- Steps:
    - Create an S3 bucket for hosting.
    - Configure it for static website hosting.
    - Set up bucket policy to allow public read access.
    - Add an index.html file.

```
terraform-static-site/
│── main.tf              # Main Terraform configuration file
│── variables.tf         # Define variables (optional)
│── outputs.tf           # Define outputs like website URL
│── index.html           # Your website's main HTML file
│── terraform.tfvars     # Variable values (optional)
│── README.md            # Project description and setup instructions
```

```
Getting started
git clone https://github.com/marvinga/1-create-a-static-website-using-amazon-s3
cd 1-create-a-static-website-using-amazon-s3

terraform init
terraform validate
terraform plan
terraform apply
terraform output website_url
terraform destroy
```




