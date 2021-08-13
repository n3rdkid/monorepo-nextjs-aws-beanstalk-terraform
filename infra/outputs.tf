output "admin_dev_url" {
  value = module.beanstalk_environment_consumer_dev.beanstalk_environment_endpoint
}
output "consumer_dev_url" {
  value = module.beanstalk_environment_admin_dev.beanstalk_environment_endpoint
}