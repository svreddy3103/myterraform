resource aws_s3_bucket "b1"{
      bucket = "hsbc-sheshi2809-1999"
      
}
resource aws_s3_bucket_policy "b2f1"{
	bucket =aws_s3_bucket.b1.bucket
	policy =file("./b1244policy.json")
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.b1.id
  versioning_configuration {
    status = "Enabled"
  }
}

