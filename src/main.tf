provider "aws"{
    region = "eu-central-1"
}


terraform {
  backend "s3" {
    bucket = "sharanya-terraform-githubactions"
    key = "terraform.tfstate" #path inside the bucket
    region = "eu-central-1" #bucket region
    
  }
}

resource "aws_instance" "public_instance" {
 ami           = "ami-0084a47cc718c111a"
 instance_type = "t2.micro"

 tags = {
   Name = "Sharanya-Instance",
 }
}