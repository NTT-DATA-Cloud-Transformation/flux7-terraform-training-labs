======
LAB 6b
======

Go to ~/flux7-terraform-training-labs/lab-6-outputs

Create the file backend.tf as shown in the example below

Run terraform init and approve the copy of the local state file to S3

Find the state file in the AWS console, download it to your laptop and read its content

Check the local state file

Run terraform plan and terraform apply

Find the state file in the AWS console, download it to your laptop and read its content

Look at the version history for the file in S3

Note: When used in a CI/CD environment, the backend settings are overwritten and parts of the path (eg dev) are dynamically inserted. Terraform still expect to find backend.tf file but dummy values can be set and stored in Git 
