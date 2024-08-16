resource "aws_instance" "db"{
    ami  = "ami-041e2ea9402c46c32"
    instance_type = "t2.micro"
     vpc_security_group_ids = [aws_security_group.allow_shh.id]

    tags={
        Name = "db"
       
    }

}

resource "aws_security_group" "allow_shh"{
    name= "allow_shh"
    description= "allowing ssh access"
    
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = "Revanth"
    }
}

