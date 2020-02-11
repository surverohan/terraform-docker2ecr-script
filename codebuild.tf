# Checks if build folder has changed
data "external" "build_folder" {
  program = ["${path.module}/bin/folder_contents.sh", var.DOCKER_folder]
}

# Builds test-service and pushes it into aws_ecr_repository
resource "null_resource" "build_and_push" {
 
  # See build.sh for more details
  provisioner "local-exec" {
    command = "${path.module}/bin/build.sh ${var.DOCKER_folder} ${var.ECR_URL_REPO}:${var.DOCKER_IMAGE_TAG} ${var.AWS_REGION}"
  }
}