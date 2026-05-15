## Terraform Flow

terraform.tfvars
        ↓
Stores the actual values
(example: VPC name, CIDR block, subnet names)

        ↓

main.tf
        ↓
Main Terraform file that calls the required modules

        ↓

source = ../modules/network
        ↓
Terraform goes to the module folder
to load reusable infrastructure code

        ↓

modules/network/main.tf
        ↓
Contains reusable resource definitions
like:
- VPC
- Subnets
- Security Groups
- Route Tables

        ↓

Terraform Plan & Apply
        ↓
Terraform creates the infrastructure in AWS 


## Basic Structure of the project
terraform-project/
│
├── modules/
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── ecs/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── dev/
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   └── provider.tf
│
├── testing/
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   └── provider.tf
│
└── production/
    ├── main.tf
    ├── variables.tf
    ├── terraform.tfvars
    └── provider.tf