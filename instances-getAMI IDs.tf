#Get Linux AMI ID using SSM Parameter endpoint in us-east-1
data "aws_ssm_parameter" "linuxAmi" {
  provider = aws.region-master
  name     = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}
#Get Linux AMI ID using SSM Parameter endpoint in us-west-1
data "aws_ssm_parameter" "linuxAmicali" {
  provider = aws.region-worker
  name     = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

