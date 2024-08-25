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


variable "tags" {
    default = {
        Project="Expense"
        Environment= "Dev"
        Module="DB"
        Name= "DB"
    }
  
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