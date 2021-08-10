
variable "aws_elastic_beanstalk_application_name" {
  type=string
  description = "Name of the Beanstalk application"
}

variable "aws_elastic_beanstalk_application_description" {
  type=string
  description = "Description for the Beanstalk application"
}
variable "beanstalk_application_service_role" {
  type = string
  description = "Service role for the Beanstalk application"
  
}