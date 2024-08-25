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


variable "common_tags" {
    default = {
        Project="Expense"
        Environment= "Dev"
        Terraform= "true"
    }
  
}

variable "instance_names" {
  type = list(string)
  default = [ "db","backend","frontend" ]
  
}

variable "instance_name" {
  default = "db"
  
}

variable "sg_name" {
  
  default = "allow ssh"
}

variable "sg_description" {
  default = "allow port 22"
}

variable "ssh_port" {
  default= 22
}

variable "protocol" {
  default="tcp"
}
variable "cidr_allow" {
    type = list(string)

    default = ["0.0.0.0/0"]
  
}

#r53 variable

variable "zone_id" {
  default = "Z01827032XHGZ2ZUO1RKQ"
}

variable "domain_name" {
  default = "daws78s-rev.com"
  
}