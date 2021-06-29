provider "aws" {
region = "us-east-2"
#access_key=""
#secret_key= ""
}

resource "aws_instance" "instace_centos" {
  ami = "ami-00399ec92321828f5"  
   instance_type ="t2.micro"
   vpc_security_group_ids = [aws_security_group.web-node.id]
   key_name = "us-east2key"
tags = {
    Name = "Master"
}

}
#ami-000e7ce4dd68e7a11
#ami = "ami-00399ec92321828f5"
resource "aws_instance" "instace_ubuntu" {
   count  = 2
   ami = "ami-00399ec92321828f5"
     key_name = "us-east2key"
   vpc_security_group_ids = [aws_security_group.web-node.id] 
   instance_type ="t2.micro"
tags = {
    Name = "instance-ubuntu-${count.index}"
}

}


