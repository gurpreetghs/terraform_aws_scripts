 resource "aws_vpc" "preetvpc" {                
   cidr_block       = "10.0.0.0/16"   
   instance_tenancy = "default"
   tags = {
    Name = "preetvpc"
  }  
 }

 resource "aws_subnet" "publicsubnets" {   
   vpc_id =  aws_vpc.preetvpc.id
   cidr_block = "10.0.0.0/24"       
 }
 resource "aws_internet_gateway" "IGW-preetvpc" {    
    vpc_id =  aws_vpc.preetvpc.id             
 }
 

 resource "aws_route_table" "PublicRT" {   
    vpc_id =  aws_vpc.preetvpc.id
         route {
    cidr_block = "0.0.0.0/0"               
    gateway_id = aws_internet_gateway.IGW-preetvpc.id
     }
 }

 resource "aws_route_table_association" "PublicRTassociation" {
    subnet_id = aws_subnet.publicsubnets.id
    route_table_id = aws_route_table.PublicRT.id


 }
