Go to the directory ~/flux7-terraform-training-labs/lab-5-windows-server

Review and understand the code

Customize terraform.tfvars for your pod

Deploy the code terraform template

Read about https://www.terraform.io/docs/providers/aws/r/instance.html#get_password_data

Check the state file. What do you see in password_data?

Grab the public ip from the terraform state. Note that you can also find it in the AWS Console.

Retrieve the password from command line or the AWS console.

RDP to the server and verify there is a file in c:\test.txt



cat terraform.tfstate | grep -i password_data

echo '<password here>' | base64 -d > password_data_enc.txt
  
openssl rsautl -decrypt -inkey mykey -in password_data_enc.txt -out decrypted.txt

cat decrypted.txt



Run: terraform destroy
