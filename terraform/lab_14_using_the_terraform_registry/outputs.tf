output "bucket_name" {
  description = "The names of the S3 buckets"
  value       = { for name, bucket in module.s3_buckets : name => bucket.s3_bucket_id }
}

output "bucket_arn" {
  description = "The ARNs of the S3 buckets"
  value       = { for name, bucket in module.s3_buckets : name => bucket.s3_bucket_arn }
}
