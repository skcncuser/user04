resource "aws_internet_gateway" "dev" {
  vpc_id = "${aws_vpc.dev.id}"

  tags = {
    Name = "user04-final-IG"
  }
}
