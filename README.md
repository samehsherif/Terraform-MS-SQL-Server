# Terraform with MS SQL Server

This project demonstrates deploying MS SQL Server using Terraform.

## Architecture

![Terraform with SQL Server](images/terraform-sqlserver.png)

```
.
├── main.tf
├── providers.tf
├── variables.tf
├── outputs.tf
└── modules
    ├── resource_group
    │   ├── main.tf
    │   └── variables.tf
    └── sql
        ├── main.tf
        └── variables.tf

```
## Execution

## After Pulling

```


terraform fmt
terraform init
terraform validate
terraform plan
terraform apply -auto-approve

```