variable "image_id" {

    type = string
    default = "ami-041e2ea9402c46c32"
    description = "RHEL-9 AMI ID"
  
}

variable "instance_type" {
  type = string
    default = "t2.micro"
    description = "Instance as t2.micro"
}


variable "instance_name" {
    default = "db3"
  
}