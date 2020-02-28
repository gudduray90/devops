provider "aws" {
    #A provider is responsible for understanding API interactions and exposing resources
    region  = "us-east-2"  
}

resource "aws_instance" "my-first-instance" {
    #Resources define the data types and API interactions required to create, update, and destroy infrastructure with a cloud vendor,
    # while the Terraform state 
    #stores mapping and metadata information for those remote objects.
    ami             = "ami-0998bf58313ab53da"
    instance_type   = "t2.micro"
    tags{
        Name = "Terraform-1"
    }
}

