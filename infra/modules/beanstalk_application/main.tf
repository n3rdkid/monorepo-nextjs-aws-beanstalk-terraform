
terraform {
  required_version = ">= v1.0.3"
}
# resource "aws_iam_role" "aws_iam_role" {
#   assume_role_policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = "sts:AssumeRole"
#         Effect = "Allow"
#         Sid    = ""
#         Principal = {
#           Service = "ec2.amazonaws.com"
#         }
#       },
#     ]
#   })
# }
resource "aws_elastic_beanstalk_application" "beanstalk_app" {
  name        = var.aws_elastic_beanstalk_application_name
  description = var.aws_elastic_beanstalk_application_description

  # appversion_lifecycle {
  #   service_role          = aws_iam_role.beanstalk_service.arn
  #   max_count             = 128
  #   delete_source_from_s3 = true
  # }
}