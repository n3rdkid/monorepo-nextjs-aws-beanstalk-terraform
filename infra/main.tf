module "beanstalk_app_project" {
    source = "./modules/beanstalk_application"
    aws_elastic_beanstalk_application_name=var.aws_elastic_beanstalk_application_name
    aws_elastic_beanstalk_application_description= var.aws_elastic_beanstalk_application_description
}

module "beanstalk_environment_consumer_dev" {
      source = "./modules/beanstalk_environment"
      aws_elastic_beanstalk_application_name = module.beanstalk_app_project.beanstalk_application_name
      beanstalk_environment_name = "consumer-dev"   
      beanstalk_environment_solution_stack_name=var.beanstalk_environment_solution_stack_name
}
module "beanstalk_environment_admin_dev" {
      source = "./modules/beanstalk_environment"
      aws_elastic_beanstalk_application_name = module.beanstalk_app_project.beanstalk_application_name
      beanstalk_environment_name = "admin-dev"     
      beanstalk_environment_solution_stack_name=var.beanstalk_environment_solution_stack_name
}