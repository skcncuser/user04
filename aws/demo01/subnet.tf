resource "aws_subnet" "subnet-a" {
  vpc_id            = "${aws_vpc.dev.id}"
  availability_zone = "ap-northeast-1a"
  cidr_block        = "104.0.1.0/24"

  tags = {
    Name = "user04-final-subnet-a"
  }
}

resource "aws_subnet" "subnet-b" {
  vpc_id            = "${aws_vpc.dev.id}"
  availability_zone = "ap-northeast-1c"
  cidr_block        = "104.0.2.0/24"

  tags = {
    Name = "user04-final-subnet-b"
  }
}
