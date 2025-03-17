output "aws_s3_bucket_name" {
  value = aws_s3_bucket.static_site.bucket
}

output "website_url" {
  value = aws_s3_bucket_website_configuration.website_config.website_endpoint
}

