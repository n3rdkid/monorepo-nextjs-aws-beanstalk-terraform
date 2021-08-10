
terraform {
  required_version = ">= v1.0.3"
}
data "aws_iam_policy_document" "service" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    principals {
      type        = "Service"
      identifiers = ["elasticbeanstalk.amazonaws.com"]
    }
    effect = "Allow"
  }
}
resource "aws_iam_role" "beanstalk_service" {
  name               = "eb-service"
  assume_role_policy = data.aws_iam_policy_document.service.json
}
resource "aws_elastic_beanstalk_application" "beanstalk_app" {
  name        = var.aws_elastic_beanstalk_application_name
  description = var.aws_elastic_beanstalk_application_description

  appversion_lifecycle {
    service_role          = aws_iam_role.beanstalk_service.arn
    max_count             = 128
    delete_source_from_s3 = true
  }
}