# monorepo-nextjs-aws-beanstalk-terraform
Deploying NextJS MonoRepo to AWS Beanstalk (Created using Terrform) using Github Actions  


- Create `/infra/variables.tf` or provide input variables using other ways.
- Run `terraform init`
- Run `terraform plan`
- Run `terraform apply`
- Make changes to the package and push it. [ Make any change in `shared` to deploy all packages ]
- Finally Run `terraform destroy` to delete all resources
