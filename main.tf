resource "aws_instance" "my_vm" {
 ami                       = local.ami
 instance_type             = local.type

 tags = {
   Name = local.name_tag,
 }
}

resource "aws_s3_bucket" "state_bucket" {
  bucket = "tf-tuts-state-pedro-steil"

  tags = {
    Name = "State Bucket"
  }
}