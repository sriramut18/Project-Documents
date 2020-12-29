provider "aws" {
    region = var.AWS_REGION
}

resource "aws_instance" "ec2_instance" {
    ami = "ami-052c08d70def0ac62"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0dd3c22f1b5261ac2"]
    tags = {Name = "HTTP_SERVER"}
    key_name = "terraform"
}