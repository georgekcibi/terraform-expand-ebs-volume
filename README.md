# terraform-expand-ebs-volume

First create main.tf containing with the resource aws_ebs_volume and provide the current size of the volume, AWS region. After that use the command "terraform import" to import the volume to terraform state file.


terraform import aws_ebs_volume.mysql vol-0123456789abcdef0
Import successful!

Once done, edit main.tf and change the value of size to desired disk value after that run terraform init, validate the code, plan and apply.


terraform apply -target=aws_ebs_volume.mysql
  ~ aws_ebs_volume.mysql
      size: "12" => "20"
