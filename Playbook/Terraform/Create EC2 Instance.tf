provider "aws" {
    region  = "us-east-2"  
}

resource "aws-instance" "my-first-instance" {
    ami             = "ami-0998bf58313ab53da"
    instance_type   = "t2.micro"
}

