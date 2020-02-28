provider "aws" {
    #A provider is responsible for understanding API interactions and exposing resources
    region  = "us-east-2"
    access_key = "AKIAYWLTT3XVISVL5LHA"
    secret_key = "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"  
}


resource "aws_key_pair" "terraform_demo" {
    key_name = "terraform_demo"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCr0y74VEefMqrIwd4CoLUZy3Si+gKM1seb0gVDsY8r4ZDGfJHG1ot+HPawxsSPhcz5qH60npw9+7myKA//76LABVf2TYxO28W1fueqtlo4+ApW6HwssekoVriAy5DhbrmOsbvyCQ1Pat0sgHynLo32xpr4P/Wm3iCQDBPrVDbLlrIEggiLXLg41WltptZsI5whGsuP2tF2hU2icMssjixavxhf20+xlJGsH7ihzWmj1p5ekz0cNnb0MKturrtxi+RksYC0btyEB+wUL5HLNJq2V2MRLjT37ym902rHXxBZdPWjl2GOGugBrlp1eA97HYIGqv9i3h8eltWLG7SrAZNCXS1nw2B05u9GlYhPV/M5P6NwCTPOopUwfbxfyjPoZONT4DRIKjHuaaJAtefuWfs41b6NEo1OmndPQ8B0t+sAETBok2EJr5NxqGExuJCvl8/3MAe8TtV9tzNnf7K8L9O2cpwUMYBk+zg6GhV5Ashq8HsZuoDdQ4r6uikLW3fKJjM= root@ip-172-31-38-253.us-east-2.compute.internal"
}


resource "aws_instance" "my-first-instance" {
    #Resources define the data types and API interactions required to create, update, and destroy infrastructure with a cloud vendor,
    # while the Terraform state 
    #stores mapping and metadata information for those remote objects.
    ami             = "ami-0998bf58313ab53da"
    instance_type   = "t2.micro"
    key_name = "${aws_key_pair.terraform_demo.key_name}"
    tags{
        Name = "Terraform-1"
    }
}

