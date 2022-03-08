resource "aws_vpc" "preetvpc" {                
   cidr_block       = "10.0.0.0/24"
 }
resource "aws_internet_gateway" "igw-preetvpc" {
  vpc_id = aws_vpc.preetvpc.id
  
}
resource "aws_subnet" "preetsbt" {
  vpc_id = aws_vpc.preetvpc.id
  cidr_block = "10.0.0.0/16"
  
}
resource "aws_" "name" {
  
}