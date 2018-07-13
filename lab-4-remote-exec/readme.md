Go to ~/flux7-terraform-training-labs/lab-4-remote-exec

Run the following command to generate a key. Do not provide a password when prompted.

ssh-keygen -f mykey

Run the following command to verify the keys were created

ll mykey*

Edit the terraform.tfvars with the environment info specific to your pod

Deploy the code terraform template

Grab the private IP of the EC2 instance created from the terraform state. Note that you can also find it in the AWS Console

Run the following command to verify Apache was installed

curl http://<private_ip>


Run: terraform destroy	
