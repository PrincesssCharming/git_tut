provider "aws" {
  region = "eu-north-1"
  access_key = "AKIA6GBMFQHCPTQANJ2B"
  secret_key = "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"
}

resource "aws_instance" "my_first_tf_server" {
  ami = 
}