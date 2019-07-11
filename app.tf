resource "aws_instance" "web01" {
  ami           = "ami-0cfee17793b08a293"
  instance_type = "t2.micro"
  # associate_public_ip_address = false
  availability_zone = "us-east-1a"
  security_groups   = ["web-sg"]
  key_name          = "${var.key_name}"
  connection {
    host  = self.public_ip
    type  = "ssh"
    user  = "ubuntu"
    agent = true
  }
  provisioner "file" {
    source      = "httpbin.sh"
    destination = "/home/ubuntu/httpbin.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod u+x /home/ubuntu/httpbin.sh",
      "sudo /home/ubuntu/httpbin.sh",
    ]
  }
}

resource "aws_instance" "web02" {
  ami           = "ami-0cfee17793b08a293"
  instance_type = "t2.micro"
  # associate_public_ip_address = false
  availability_zone = "us-east-1b"
  security_groups   = ["web-sg"]
  key_name          = "${var.key_name}"
  connection {
    host  = self.public_ip
    type  = "ssh"
    user  = "ubuntu"
    agent = true
  }
  provisioner "file" {
    source      = "httpbin.sh"
    destination = "/home/ubuntu/httpbin.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod u+x /home/ubuntu/httpbin.sh",
      "sudo /home/ubuntu/httpbin.sh",
    ]
  }
}
