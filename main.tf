provider "aws" {
  region = "us-east-1"
}




# Upload index.html to the bucket
resource "aws_s3_object" "index" {
  bucket = "onanongautama-porfolio.com"
  key    = "index.html"
  source = "${path.module}/upload/index.html"

  content_type = "text/html"

  etag = filemd5("${path.module}/upload/index.html")

}
