provider "aws" {
  region = "us-east-1"
}


module "my_bucket_1" {
  source        = "./modules/s3"
  bucket	= "yash-jaiswal-1"
  acl		= "private"
  tags          = {
  Name="Yash"
  Email="yash.jaiswal@quantiphi.com"
  }
}

module "my_bucket_2" {
  source        = "./modules/s3"
  bucket	= "yash-jaiswal-2"
  acl		= "private"
  tags          = {
  Name="Yash"
  Email="yash.jaiswal@quantiphi.com"
  }
}


module "s3_object_mod" {
  source	= "./modules/s3_object"
  key		= "file.txt"
  bucket	= "yash-jaiswal-1"
  path		= "./yash.txt"
}


module "my_ec2" {
  source        = "./modules/ec2"
  ami_id        = "ami-02354e95b39ca8dec"
  instance_type = "t2.micro"
}


