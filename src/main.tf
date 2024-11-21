provider "aws"{
    region = "eu-central-1"
}


resource "aws_instance" "public_instance" {
 ami           = "ami-0084a47cc718c111a"
 instance_type = "t2.micro"

 tags = {
   Name = "Sharanya-Instance",
 }
}