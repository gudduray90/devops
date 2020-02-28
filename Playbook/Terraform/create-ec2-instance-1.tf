provider "aws" {
    #A provider is responsible for understanding API interactions and exposing resources
    region  = "us-east-2"
    access_key = "AKIAYWLTT3XVISVL5LHA"
    secret_key = "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"  
}

resource "aws_instance" "my-first-instance" {
    #Resources define the data types and API interactions required to create, update, and destroy infrastructure with a cloud vendor,
    # while the Terraform state 
    #stores mapping and metadata information for those remote objects.
    ami             = "ami-0998bf58313ab53da"
    instance_type   = "t2.micro"
    key_name = "App_Server"
    tags{
        Name = "Terraform-1"
    }
}

