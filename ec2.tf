resource "aws_instance" "preetec2" {
    ami = "ami-0c293f3f676ec4f90"
    instance_type = "t2.micro"
    subnet_id = "subnet-07c861348e821f687"
    vpc_security_group_ids = ["sg-0adfdff42f4a457ba"]
    associate_public_ip_address = true
    key_name="testtf"

    

    tags = {
    Name = "preetec2"
  }

}
