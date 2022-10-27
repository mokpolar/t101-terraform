```bash
terraform plan && terraform apply -auto-approve

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

Terraform will perform the following actions:

  # aws_vpc.mokpolar-vpc will be created
  + resource "aws_vpc" "mokpolar-vpc" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.10.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_classiclink                   = (known after apply)
      + enable_classiclink_dns_support       = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "mokpolar-t101-study-week2"
        }
      + tags_all                             = {
          + "Name" = "mokpolar-t101-study-week2"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run
"terraform apply" now.

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

Terraform will perform the following actions:

  # aws_vpc.mokpolar-vpc will be created
  + resource "aws_vpc" "mokpolar-vpc" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.10.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_classiclink                   = (known after apply)
      + enable_classiclink_dns_support       = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "mokpolar-t101-study-week2"
        }
      + tags_all                             = {
          + "Name" = "mokpolar-t101-study-week2"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.
aws_vpc.mokpolar-vpc: Creating...
aws_vpc.mokpolar-vpc: Creation complete after 1s [id=vpc-0d5b38c93d2be3aa0]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

```bash
terraform state list

aws_vpc.mokpolar-vpc
```


```bash
terraform state list

aws_subnet.mokpolar-subnet1
aws_subnet.mokpolar-subnet2
aws_vpc.mokpolar-vpc
```


```bash
terraform plan && terraform apply -auto-approve
aws_vpc.mokpolar-vpc: Refreshing state... [id=vpc-06ba4c4bac36f2e17]
aws_subnet.mokpolar-subnet2: Refreshing state... [id=subnet-0553f5093ce1d9c8d]
aws_subnet.mokpolar-subnet1: Refreshing state... [id=subnet-0452fbcd3305ca589]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create
  ~ update in-place

Terraform will perform the following actions:

  # aws_internet_gateway.mokpolar-igw will be created
  + resource "aws_internet_gateway" "mokpolar-igw" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "t101-igw"
        }
      + tags_all = {
          + "Name" = "t101-igw"
        }
      + vpc_id   = "vpc-06ba4c4bac36f2e17"
    }

  # aws_subnet.mokpolar-subnet1 will be updated in-place
  ~ resource "aws_subnet" "mokpolar-subnet1" {
        id                                             = "subnet-0452fbcd3305ca589"
      ~ tags                                           = {
          ~ "Name" = "mokpolar-t101-subnet1" -> "t101-subnet1"
        }
      ~ tags_all                                       = {
          ~ "Name" = "mokpolar-t101-subnet1" -> "t101-subnet1"
        }
        # (14 unchanged attributes hidden)
    }

  # aws_subnet.mokpolar-subnet2 will be updated in-place
  ~ resource "aws_subnet" "mokpolar-subnet2" {
        id                                             = "subnet-0553f5093ce1d9c8d"
      ~ tags                                           = {
          ~ "Name" = "mokpolar-t101-subnet2" -> "t101-subnet2"
        }
      ~ tags_all                                       = {
          ~ "Name" = "mokpolar-t101-subnet2" -> "t101-subnet2"
        }
        # (14 unchanged attributes hidden)
    }

  # aws_vpc.mokpolar-vpc will be updated in-place
  ~ resource "aws_vpc" "mokpolar-vpc" {
        id                                   = "vpc-06ba4c4bac36f2e17"
      ~ tags                                 = {
          ~ "Name" = "mokpolar-week2-study" -> "t101-study"
        }
      ~ tags_all                             = {
          ~ "Name" = "mokpolar-week2-study" -> "t101-study"
        }
        # (16 unchanged attributes hidden)
    }

Plan: 1 to add, 3 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run
"terraform apply" now.
aws_vpc.mokpolar-vpc: Refreshing state... [id=vpc-06ba4c4bac36f2e17]
aws_subnet.mokpolar-subnet1: Refreshing state... [id=subnet-0452fbcd3305ca589]
aws_subnet.mokpolar-subnet2: Refreshing state... [id=subnet-0553f5093ce1d9c8d]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create
  ~ update in-place

Terraform will perform the following actions:

  # aws_internet_gateway.mokpolar-igw will be created
  + resource "aws_internet_gateway" "mokpolar-igw" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "t101-igw"
        }
      + tags_all = {
          + "Name" = "t101-igw"
        }
      + vpc_id   = "vpc-06ba4c4bac36f2e17"
    }

  # aws_subnet.mokpolar-subnet1 will be updated in-place
  ~ resource "aws_subnet" "mokpolar-subnet1" {
        id                                             = "subnet-0452fbcd3305ca589"
      ~ tags                                           = {
          ~ "Name" = "mokpolar-t101-subnet1" -> "t101-subnet1"
        }
      ~ tags_all                                       = {
          ~ "Name" = "mokpolar-t101-subnet1" -> "t101-subnet1"
        }
        # (14 unchanged attributes hidden)
    }

  # aws_subnet.mokpolar-subnet2 will be updated in-place
  ~ resource "aws_subnet" "mokpolar-subnet2" {
        id                                             = "subnet-0553f5093ce1d9c8d"
      ~ tags                                           = {
          ~ "Name" = "mokpolar-t101-subnet2" -> "t101-subnet2"
        }
      ~ tags_all                                       = {
          ~ "Name" = "mokpolar-t101-subnet2" -> "t101-subnet2"
        }
        # (14 unchanged attributes hidden)
    }

  # aws_vpc.mokpolar-vpc will be updated in-place
  ~ resource "aws_vpc" "mokpolar-vpc" {
        id                                   = "vpc-06ba4c4bac36f2e17"
      ~ tags                                 = {
          ~ "Name" = "mokpolar-week2-study" -> "t101-study"
        }
      ~ tags_all                             = {
          ~ "Name" = "mokpolar-week2-study" -> "t101-study"
        }
        # (16 unchanged attributes hidden)
    }

Plan: 1 to add, 3 to change, 0 to destroy.
aws_vpc.mokpolar-vpc: Modifying... [id=vpc-06ba4c4bac36f2e17]
aws_vpc.mokpolar-vpc: Modifications complete after 0s [id=vpc-06ba4c4bac36f2e17]
aws_internet_gateway.mokpolar-igw: Creating...
aws_subnet.mokpolar-subnet2: Modifying... [id=subnet-0553f5093ce1d9c8d]
aws_subnet.mokpolar-subnet1: Modifying... [id=subnet-0452fbcd3305ca589]
aws_subnet.mokpolar-subnet2: Modifications complete after 1s [id=subnet-0553f5093ce1d9c8d]
aws_subnet.mokpolar-subnet1: Modifications complete after 1s [id=subnet-0452fbcd3305ca589]
aws_internet_gateway.mokpolar-igw: Creation complete after 1s [id=igw-0a2c2b275ef50678c]

Apply complete! Resources: 1 added, 3 changed, 0 destroyed.
```


```bash
terraform plan && terraform apply -auto-approve
aws_vpc.mokpolar-vpc: Refreshing state... [id=vpc-06ba4c4bac36f2e17]
aws_internet_gateway.mokpolar-igw: Refreshing state... [id=igw-0a2c2b275ef50678c]
aws_subnet.mokpolar-subnet2: Refreshing state... [id=subnet-0553f5093ce1d9c8d]
aws_subnet.mokpolar-subnet1: Refreshing state... [id=subnet-0452fbcd3305ca589]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

Terraform will perform the following actions:

  # aws_route.mokpolar-defaultroute will be created
  + resource "aws_route" "mokpolar-defaultroute" {
      + destination_cidr_block = "0.0.0.0/0"
      + gateway_id             = "igw-0a2c2b275ef50678c"
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)
    }

  # aws_route_table.mokpolar-rt will be created
  + resource "aws_route_table" "mokpolar-rt" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Name" = "t101-rt"
        }
      + tags_all         = {
          + "Name" = "t101-rt"
        }
      + vpc_id           = "vpc-06ba4c4bac36f2e17"
    }

  # aws_route_table_association.mokpolar-rtassociation1 will be created
  + resource "aws_route_table_association" "mokpolar-rtassociation1" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = "subnet-0452fbcd3305ca589"
    }

  # aws_route_table_association.mokpolar-rtassociation2 will be created
  + resource "aws_route_table_association" "mokpolar-rtassociation2" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = "subnet-0553f5093ce1d9c8d"
    }

Plan: 4 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run
"terraform apply" now.
aws_vpc.mokpolar-vpc: Refreshing state... [id=vpc-06ba4c4bac36f2e17]
aws_internet_gateway.mokpolar-igw: Refreshing state... [id=igw-0a2c2b275ef50678c]
aws_subnet.mokpolar-subnet2: Refreshing state... [id=subnet-0553f5093ce1d9c8d]
aws_subnet.mokpolar-subnet1: Refreshing state... [id=subnet-0452fbcd3305ca589]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

Terraform will perform the following actions:

  # aws_route.mokpolar-defaultroute will be created
  + resource "aws_route" "mokpolar-defaultroute" {
      + destination_cidr_block = "0.0.0.0/0"
      + gateway_id             = "igw-0a2c2b275ef50678c"
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)
    }

  # aws_route_table.mokpolar-rt will be created
  + resource "aws_route_table" "mokpolar-rt" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Name" = "t101-rt"
        }
      + tags_all         = {
          + "Name" = "t101-rt"
        }
      + vpc_id           = "vpc-06ba4c4bac36f2e17"
    }

  # aws_route_table_association.mokpolar-rtassociation1 will be created
  + resource "aws_route_table_association" "mokpolar-rtassociation1" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = "subnet-0452fbcd3305ca589"
    }

  # aws_route_table_association.mokpolar-rtassociation2 will be created
  + resource "aws_route_table_association" "mokpolar-rtassociation2" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = "subnet-0553f5093ce1d9c8d"
    }

Plan: 4 to add, 0 to change, 0 to destroy.
aws_route_table.mokpolar-rt: Creating...
aws_route_table.mokpolar-rt: Creation complete after 1s [id=rtb-0d707356a4747f7bb]
aws_route_table_association.mokpolar-rtassociation2: Creating...
aws_route_table_association.mokpolar-rtassociation1: Creating...
aws_route.mokpolar-defaultroute: Creating...
aws_route_table_association.mokpolar-rtassociation2: Creation complete after 0s [id=rtbassoc-0bd4e159a21626057]
aws_route_table_association.mokpolar-rtassociation1: Creation complete after 0s [id=rtbassoc-080692c7804d991a6]
aws_route.mokpolar-defaultroute: Creation complete after 0s [id=r-rtb-0d707356a4747f7bb1080289494]

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.
```
