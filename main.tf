# Specify the AWS provider and region
provider "aws" {
  region = "us-east-1" # Change this to your preferred AWS Region
}

# Create an S3 bucket for the static website
resource "aws_s3_bucket" "static_site" {
    bucket = "bucket2-for-my-static-website-2" # Replace with globally unique name
}

# Enable static website hosting for the S3 bucket
resource "aws_s3_bucket_website_configuration" "website_config" {
    bucket = aws_s3_bucket.static_site.id

    index_document {
      suffix = "index.html" # The main page for the website
    }
}

# Configure S3  bucket to allow public access
resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket = aws_s3_bucket.static_site.id

  block_public_acls = false         # allow acls
  block_public_policy = false       # allow bucket policies
  ignore_public_acls = false        # 
  restrict_public_buckets = false   # Allow public access
}

# Set up a bucket policy to make the website content publicly readable
resource "aws_s3_bucket_policy" "allow_public_access" {
  bucket = aws_s3_bucket.static_site.id
  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::${aws_s3_bucket.static_site.id}/*"
        }
    ]
  }
POLICY
}

# Upload the index.html file to the S3 bucket
resource "aws_s3_object" "index_html" {
    bucket = aws_s3_bucket.static_site.id
    key = "index.html"              # File name in S3
    source = "text/index.html"           # Local file to upload
    content_type = "text/html"
    #acl = "public-read"             # Allow public access

}




