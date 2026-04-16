resource "aws_vpc" "this" {}

resource "aws_subnet" "public" {}

resource "aws_subnet" "private" {}

resource "aws_internet_gateway" "igw" {}

resource "aws_nat_gateway" "nat" {}