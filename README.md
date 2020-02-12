##Terraform to supprt CI create image for specific path and push to ecr

1) configure aws details in terraform.tf as input params

2) run cmd - terraform init

3) run cmd - terraform plan -var-file="terraform.tfvars"

4) run cmd - terraform apply -var-file="terraform.tfvars"

5) output: ECR Image url

ecr_image_url = 313182395386.dkr.ecr.us-east-1.amazonaws.com/test:developmentv2





