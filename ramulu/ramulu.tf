provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAS5N235KTSHBILSOO"
  secret_key = "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"
}


resource "aws_instance" "terraformeast1" {
  ami                     = "ami-05c13eab67c5d8861"
  instance_type           = "t2.micro"
}

provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAS5N235KTSHBILSOO"
  secret_key = "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"
  alias="east"
}

resource "aws_instance" "terraforeast2" {
  ami                     = "ami-089c26792dcb1fbd4"
  instance_type           = "t2.micro"
  provider="aws.east"
}
