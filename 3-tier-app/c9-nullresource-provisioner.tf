resource "null_resource" "temp_null" {
  depends_on = [module.vpc]

  connection {
    type        = "ssh"
    host        = module.public-bastion-instance.public_ip
    private_key = file("ansible_target.pem")
    user        = "ec2-user"
  }

  provisioner "file" {
    source      = "ansible_target.pem"
    destination = "/tmp/ansible_target.pem"
  }

  provisioner "remote-exec" {
    inline = ["sudo chmod 400 /tmp/ansible_target.pem"]
  }

  provisioner "local-exec" {
    command = "echo VPC created on `date` and VPC id is ${module.vpc.vpc_id} >> creation-time-vpc-id.txt"
  }
}
