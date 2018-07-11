Go to ~/flux7-terraform-training-labs/lab-3-split-files

Review the files in this directory and understand how they relate

Define a new variable “instance_type” in variable.tf, replace the hardcoded value in main.tf, then deploy the template by providing t2.large as instance type when prompted

Destroy all resources, set “instance_type” to t2.small in terraform.tfvars and apply again. What was different this time?

Bonus: Add a new tag and apply again before destroying the resources. What do you observe?

Run: terraform destroy
