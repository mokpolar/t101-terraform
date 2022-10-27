# stdout of week2 homework


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


```bash
terraform plan && terraform apply -auto-approve


Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

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
      + vpc_id   = (known after apply)
    }

  # aws_lb.mokpolar-alb will be created
  + resource "aws_lb" "mokpolar-alb" {
      + arn                        = (known after apply)
      + arn_suffix                 = (known after apply)
      + desync_mitigation_mode     = "defensive"
      + dns_name                   = (known after apply)
      + drop_invalid_header_fields = false
      + enable_deletion_protection = false
      + enable_http2               = true
      + enable_waf_fail_open       = false
      + id                         = (known after apply)
      + idle_timeout               = 60
      + internal                   = (known after apply)
      + ip_address_type            = (known after apply)
      + load_balancer_type         = "application"
      + name                       = "t101-alb"
      + preserve_host_header       = false
      + security_groups            = (known after apply)
      + subnets                    = (known after apply)
      + tags                       = {
          + "Name" = "t101-alb"
        }
      + tags_all                   = {
          + "Name" = "t101-alb"
        }
      + vpc_id                     = (known after apply)
      + zone_id                    = (known after apply)

      + subnet_mapping {
          + allocation_id        = (known after apply)
          + ipv6_address         = (known after apply)
          + outpost_id           = (known after apply)
          + private_ipv4_address = (known after apply)
          + subnet_id            = (known after apply)
        }
    }

  # aws_lb_listener.mokpolar-http will be created
  + resource "aws_lb_listener" "mokpolar-http" {
      + arn               = (known after apply)
      + id                = (known after apply)
      + load_balancer_arn = (known after apply)
      + port              = 80
      + protocol          = "HTTP"
      + ssl_policy        = (known after apply)
      + tags_all          = (known after apply)

      + default_action {
          + order = (known after apply)
          + type  = "fixed-response"

          + fixed_response {
              + content_type = "text/plain"
              + message_body = "404: page not found - T101 Study"
              + status_code  = "404"
            }
        }
    }

  # aws_lb_listener_rule.mokpolar-albrule will be created
  + resource "aws_lb_listener_rule" "mokpolar-albrule" {
      + arn          = (known after apply)
      + id           = (known after apply)
      + listener_arn = (known after apply)
      + priority     = 100
      + tags_all     = (known after apply)

      + action {
          + order            = (known after apply)
          + target_group_arn = (known after apply)
          + type             = "forward"
        }

      + condition {

          + path_pattern {
              + values = [
                  + "*",
                ]
            }
        }
    }

  # aws_lb_target_group.mokpolar-albtg will be created
  + resource "aws_lb_target_group" "mokpolar-albtg" {
      + arn                                = (known after apply)
      + arn_suffix                         = (known after apply)
      + connection_termination             = false
      + deregistration_delay               = "300"
      + id                                 = (known after apply)
      + ip_address_type                    = (known after apply)
      + lambda_multi_value_headers_enabled = false
      + load_balancing_algorithm_type      = (known after apply)
      + name                               = "t101-alb-tg"
      + port                               = 80
      + preserve_client_ip                 = (known after apply)
      + protocol                           = "HTTP"
      + protocol_version                   = (known after apply)
      + proxy_protocol_v2                  = false
      + slow_start                         = 0
      + tags_all                           = (known after apply)
      + target_type                        = "instance"
      + vpc_id                             = (known after apply)

      + health_check {
          + enabled             = true
          + healthy_threshold   = 2
          + interval            = 5
          + matcher             = "200-299"
          + path                = "/"
          + port                = "traffic-port"
          + protocol            = "HTTP"
          + timeout             = 3
          + unhealthy_threshold = 2
        }

      + stickiness {
          + cookie_duration = (known after apply)
          + cookie_name     = (known after apply)
          + enabled         = (known after apply)
          + type            = (known after apply)
        }
    }

  # aws_route.mydefaultroute will be created
  + resource "aws_route" "mydefaultroute" {
      + destination_cidr_block = "0.0.0.0/0"
      + gateway_id             = (known after apply)
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
      + vpc_id           = (known after apply)
    }

  # aws_route_table_association.mokpolar-rtassociation1 will be created
  + resource "aws_route_table_association" "mokpolar-rtassociation1" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_route_table_association.mokpolar-rtassociation2 will be created
  + resource "aws_route_table_association" "mokpolar-rtassociation2" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_security_group.mokpolar-sg will be created
  + resource "aws_security_group" "mokpolar-sg" {
      + arn                    = (known after apply)
      + description            = "T101 Study SG"
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = "T101 SG"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags_all               = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # aws_security_group_rule.mokpolar-sginbound will be created
  + resource "aws_security_group_rule" "mokpolar-sginbound" {
      + cidr_blocks              = [
          + "0.0.0.0/0",
        ]
      + from_port                = 0
      + id                       = (known after apply)
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 80
      + type                     = "ingress"
    }

  # aws_security_group_rule.mokpolar-sgoutbound will be created
  + resource "aws_security_group_rule" "mokpolar-sgoutbound" {
      + cidr_blocks              = [
          + "0.0.0.0/0",
        ]
      + from_port                = 0
      + id                       = (known after apply)
      + protocol                 = "-1"
      + security_group_id        = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 0
      + type                     = "egress"
    }

  # aws_subnet.mokpolar-subnet1 will be created
  + resource "aws_subnet" "mokpolar-subnet1" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "ap-northeast-2a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.10.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "t101-subnet1"
        }
      + tags_all                                       = {
          + "Name" = "t101-subnet1"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_subnet.mokpolar-subnet2 will be created
  + resource "aws_subnet" "mokpolar-subnet2" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "ap-northeast-2c"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.10.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "t101-subnet2"
        }
      + tags_all                                       = {
          + "Name" = "t101-subnet2"
        }
      + vpc_id                                         = (known after apply)
    }

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
      + enable_dns_hostnames                 = true
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
          + "Name" = "t101-study"
        }
      + tags_all                             = {
          + "Name" = "t101-study"
        }
    }

Plan: 15 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + mokpolar-alb_dns = (known after apply)

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run
"terraform apply" now.

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

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
      + vpc_id   = (known after apply)
    }

  # aws_lb.mokpolar-alb will be created
  + resource "aws_lb" "mokpolar-alb" {
      + arn                        = (known after apply)
      + arn_suffix                 = (known after apply)
      + desync_mitigation_mode     = "defensive"
      + dns_name                   = (known after apply)
      + drop_invalid_header_fields = false
      + enable_deletion_protection = false
      + enable_http2               = true
      + enable_waf_fail_open       = false
      + id                         = (known after apply)
      + idle_timeout               = 60
      + internal                   = (known after apply)
      + ip_address_type            = (known after apply)
      + load_balancer_type         = "application"
      + name                       = "t101-alb"
      + preserve_host_header       = false
      + security_groups            = (known after apply)
      + subnets                    = (known after apply)
      + tags                       = {
          + "Name" = "t101-alb"
        }
      + tags_all                   = {
          + "Name" = "t101-alb"
        }
      + vpc_id                     = (known after apply)
      + zone_id                    = (known after apply)

      + subnet_mapping {
          + allocation_id        = (known after apply)
          + ipv6_address         = (known after apply)
          + outpost_id           = (known after apply)
          + private_ipv4_address = (known after apply)
          + subnet_id            = (known after apply)
        }
    }

  # aws_lb_listener.mokpolar-http will be created
  + resource "aws_lb_listener" "mokpolar-http" {
      + arn               = (known after apply)
      + id                = (known after apply)
      + load_balancer_arn = (known after apply)
      + port              = 80
      + protocol          = "HTTP"
      + ssl_policy        = (known after apply)
      + tags_all          = (known after apply)

      + default_action {
          + order = (known after apply)
          + type  = "fixed-response"

          + fixed_response {
              + content_type = "text/plain"
              + message_body = "404: page not found - T101 Study"
              + status_code  = "404"
            }
        }
    }

  # aws_lb_listener_rule.mokpolar-albrule will be created
  + resource "aws_lb_listener_rule" "mokpolar-albrule" {
      + arn          = (known after apply)
      + id           = (known after apply)
      + listener_arn = (known after apply)
      + priority     = 100
      + tags_all     = (known after apply)

      + action {
          + order            = (known after apply)
          + target_group_arn = (known after apply)
          + type             = "forward"
        }

      + condition {

          + path_pattern {
              + values = [
                  + "*",
                ]
            }
        }
    }

  # aws_lb_target_group.mokpolar-albtg will be created
  + resource "aws_lb_target_group" "mokpolar-albtg" {
      + arn                                = (known after apply)
      + arn_suffix                         = (known after apply)
      + connection_termination             = false
      + deregistration_delay               = "300"
      + id                                 = (known after apply)
      + ip_address_type                    = (known after apply)
      + lambda_multi_value_headers_enabled = false
      + load_balancing_algorithm_type      = (known after apply)
      + name                               = "t101-alb-tg"
      + port                               = 80
      + preserve_client_ip                 = (known after apply)
      + protocol                           = "HTTP"
      + protocol_version                   = (known after apply)
      + proxy_protocol_v2                  = false
      + slow_start                         = 0
      + tags_all                           = (known after apply)
      + target_type                        = "instance"
      + vpc_id                             = (known after apply)

      + health_check {
          + enabled             = true
          + healthy_threshold   = 2
          + interval            = 5
          + matcher             = "200-299"
          + path                = "/"
          + port                = "traffic-port"
          + protocol            = "HTTP"
          + timeout             = 3
          + unhealthy_threshold = 2
        }

      + stickiness {
          + cookie_duration = (known after apply)
          + cookie_name     = (known after apply)
          + enabled         = (known after apply)
          + type            = (known after apply)
        }
    }

  # aws_route.mydefaultroute will be created
  + resource "aws_route" "mydefaultroute" {
      + destination_cidr_block = "0.0.0.0/0"
      + gateway_id             = (known after apply)
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
      + vpc_id           = (known after apply)
    }

  # aws_route_table_association.mokpolar-rtassociation1 will be created
  + resource "aws_route_table_association" "mokpolar-rtassociation1" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_route_table_association.mokpolar-rtassociation2 will be created
  + resource "aws_route_table_association" "mokpolar-rtassociation2" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_security_group.mokpolar-sg will be created
  + resource "aws_security_group" "mokpolar-sg" {
      + arn                    = (known after apply)
      + description            = "T101 Study SG"
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = "T101 SG"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags_all               = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # aws_security_group_rule.mokpolar-sginbound will be created
  + resource "aws_security_group_rule" "mokpolar-sginbound" {
      + cidr_blocks              = [
          + "0.0.0.0/0",
        ]
      + from_port                = 0
      + id                       = (known after apply)
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 80
      + type                     = "ingress"
    }

  # aws_security_group_rule.mokpolar-sgoutbound will be created
  + resource "aws_security_group_rule" "mokpolar-sgoutbound" {
      + cidr_blocks              = [
          + "0.0.0.0/0",
        ]
      + from_port                = 0
      + id                       = (known after apply)
      + protocol                 = "-1"
      + security_group_id        = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 0
      + type                     = "egress"
    }

  # aws_subnet.mokpolar-subnet1 will be created
  + resource "aws_subnet" "mokpolar-subnet1" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "ap-northeast-2a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.10.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "t101-subnet1"
        }
      + tags_all                                       = {
          + "Name" = "t101-subnet1"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_subnet.mokpolar-subnet2 will be created
  + resource "aws_subnet" "mokpolar-subnet2" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "ap-northeast-2c"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.10.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "t101-subnet2"
        }
      + tags_all                                       = {
          + "Name" = "t101-subnet2"
        }
      + vpc_id                                         = (known after apply)
    }

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
      + enable_dns_hostnames                 = true
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
          + "Name" = "t101-study"
        }
      + tags_all                             = {
          + "Name" = "t101-study"
        }
    }

Plan: 15 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + mokpolar-alb_dns = (known after apply)
aws_vpc.mokpolar-vpc: Creating...
aws_vpc.mokpolar-vpc: Still creating... [10s elapsed]
aws_vpc.mokpolar-vpc: Creation complete after 11s [id=vpc-097cc406006104729]
aws_internet_gateway.mokpolar-igw: Creating...
aws_subnet.mokpolar-subnet2: Creating...
aws_subnet.mokpolar-subnet1: Creating...
aws_route_table.mokpolar-rt: Creating...
aws_security_group.mokpolar-sg: Creating...
aws_lb_target_group.mokpolar-albtg: Creating...
aws_internet_gateway.mokpolar-igw: Creation complete after 1s [id=igw-0d75988e74e71a392]
aws_route_table.mokpolar-rt: Creation complete after 1s [id=rtb-0eda752d58e667046]
aws_route.mydefaultroute: Creating...
aws_subnet.mokpolar-subnet2: Creation complete after 1s [id=subnet-06bd841b16f87a0c5]
aws_route_table_association.mokpolar-rtassociation2: Creating...
aws_lb_target_group.mokpolar-albtg: Creation complete after 1s [id=arn:aws:elasticloadbalancing:ap-northeast-2:723053157750:targetgroup/t101-alb-tg/8295abc8127b641c]
aws_subnet.mokpolar-subnet1: Creation complete after 1s [id=subnet-05b72fde753475308]
aws_route_table_association.mokpolar-rtassociation1: Creating...
aws_route_table_association.mokpolar-rtassociation2: Creation complete after 0s [id=rtbassoc-0704ddf50fa057f91]
aws_route_table_association.mokpolar-rtassociation1: Creation complete after 0s [id=rtbassoc-068324b9895ef049c]
aws_route.mydefaultroute: Creation complete after 0s [id=r-rtb-0eda752d58e6670461080289494]
aws_security_group.mokpolar-sg: Creation complete after 2s [id=sg-01b506652f4975b4f]
aws_security_group_rule.mokpolar-sgoutbound: Creating...
aws_security_group_rule.mokpolar-sginbound: Creating...
aws_lb.mokpolar-alb: Creating...
aws_security_group_rule.mokpolar-sgoutbound: Creation complete after 0s [id=sgrule-3858781971]
aws_security_group_rule.mokpolar-sginbound: Creation complete after 0s [id=sgrule-97875322]
aws_lb.mokpolar-alb: Still creating... [10s elapsed]
aws_lb.mokpolar-alb: Still creating... [20s elapsed]
aws_lb.mokpolar-alb: Still creating... [30s elapsed]
aws_lb.mokpolar-alb: Still creating... [40s elapsed]
aws_lb.mokpolar-alb: Still creating... [50s elapsed]
aws_lb.mokpolar-alb: Still creating... [1m0s elapsed]
aws_lb.mokpolar-alb: Still creating... [1m10s elapsed]
aws_lb.mokpolar-alb: Still creating... [1m20s elapsed]
aws_lb.mokpolar-alb: Still creating... [1m30s elapsed]
aws_lb.mokpolar-alb: Still creating... [1m40s elapsed]
aws_lb.mokpolar-alb: Still creating... [1m50s elapsed]
aws_lb.mokpolar-alb: Still creating... [2m0s elapsed]
aws_lb.mokpolar-alb: Still creating... [2m10s elapsed]
aws_lb.mokpolar-alb: Creation complete after 2m11s [id=arn:aws:elasticloadbalancing:ap-northeast-2:723053157750:loadbalancer/app/t101-alb/ca30174b40ac75bb]
aws_lb_listener.mokpolar-http: Creating...
aws_lb_listener.mokpolar-http: Creation complete after 1s [id=arn:aws:elasticloadbalancing:ap-northeast-2:723053157750:listener/app/t101-alb/ca30174b40ac75bb/acdfdd4445160285]
aws_lb_listener_rule.mokpolar-albrule: Creating...
aws_lb_listener_rule.mokpolar-albrule: Creation complete after 0s [id=arn:aws:elasticloadbalancing:ap-northeast-2:723053157750:listener-rule/app/t101-alb/ca30174b40ac75bb/acdfdd4445160285/e75093793aea7230]

Apply complete! Resources: 15 added, 0 changed, 0 destroyed.

Outputs:

mokpolar-alb_dns = "t101-alb-52975748.ap-northeast-2.elb.amazonaws.com"
```