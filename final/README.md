
Terraform codes for AWS VPC and EKS
```bash
.
├── modules
│   ├── eks
│   │   ├── eks.tf
│   │   ├── locals.tf
│   │   ├── outputs.tf
│   │   ├── security-groups.tf
│   │   ├── variables.tf
│   │   └── versions.tf
│   └── vpc
│       ├── locals.tf
│       ├── output.tf
│       ├── variables.tf
│       ├── versions.tf
│       └── vpc.tf
└── stage
    ├── eks
    │   ├── locals.tf
    │   ├── main.tf
    │   └── outputs.tf
    └── vpc
        ├── locals.tf
        ├── main.tf
        └── outputs.tf
```