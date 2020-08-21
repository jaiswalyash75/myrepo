variable "ami_id" { type=string}

variable "instance_type" { type=string}

variable "tag_id" {
  type=map
  default ={
  Name="Yash"
  Email="yash.jaiswal@quantiphi.com"
  }
}

