
gcloud auth activate-service-account <service-account> --key="/key-path"

#command terraform 
terraform init
terraform fmt 
terraform validate
terraform plan --out=tfplan.out --var-file="terraform.tfvars"
terraform apply tfplan.out 
