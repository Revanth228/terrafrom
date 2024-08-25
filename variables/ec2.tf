resource "aws_instance" "db"{
    ami  = var.image_id
    instance_type = var.instance_type
     vpc_security_group_ids = [aws_security_group.allow_shh.id]

    tags= var.tags

}

resource "aws_security_group" "allow_shh"{
    name= var.sg_name
    description= var.sg_description
    
    ingress {
        from_port        = var.ssh_port
        to_port          = var.ssh_port
        protocol         = var.protocol
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

