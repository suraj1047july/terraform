# aws_region = "ap-south-1"

vpcs = {
  vpc1 = {
    cidr = "10.0.0.0/16"
    name = "prod-vpc"
  }
   vpc2 = {
    cidr = "10.1.0.0/16"
    name = "dev-vpc"
  }


}   

subnets = {
  subnet1 = {
    cidr_blocks = ["10.0.1.0/24","10.0.2.0/24"]
    name = "prod-subnet"
    vpc_key = "vpc1"
  }
  subnet2 = {
        cidr_blocks = ["10.1.1.0/24","10.1.2.0/24"]
        name = "dev-subnet"
        vpc_key = "vpc2"
    }

}   
