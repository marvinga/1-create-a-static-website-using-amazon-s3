# 1-create-a-static-website-using-amazon-s3

- This setup will create a fully functional S3-hosted static website with public access. Let me know if you need any modifications! 🚀

 
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
terraform init
terraform apply -auto-approve
terraform output website_url
```




