# Create ECR repository
#resource "aws_ecr_repository" "test_service" {
#  name = "newrepo1"
#}


# Checks if build folder has changed
#data "external" "build_folder" {
#  program = ["${path.module}/bin/folder_contents.sh", var.DOCKER_PATH]
#}

# Builds test-service and pushes it into aws_ecr_repository
resource "null_resource" "build_and_push" {
 
  # See build.sh for more details
  provisioner "local-exec" {
    command = "build.sh ${var.DOCKER_PATH} ${var.ECR_URL_REPO}:${var.DOCKER_IMAGE_TAG} ${var.AWS_REGION} ${var.AWS_ACCESS_KEY} ${var.AWS_SECRET_KEY}  >> completed.txt"
  }
}