##Terraform to supprt CI create image for specific path and push to ecr

configure aws details in terraform.tf as input params

run cmd - terraform init

run cmd - terraform plan -var-file="terraform.tfvars"

run cmd - terraform apply -var-file="terraform.tfvars"

output: ECR Image url

ecr_image_url = 313182395386.dkr.ecr.us-east-1.amazonaws.com/test:developmentv2