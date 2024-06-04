module "gcp-aws-ha-vpn" {
  source = "./gcp-to-aws-ha-vpn-terraform-module"

  prefix              = "vpn"
  num_tunnels         = 4
  shared_secret       = "pwm123456"

  gcp_network         = "myvpc"
  gcp_router_asn      = 64512
  vpn_gwy_region      = "us-central1"
  project_id          = "speedy-victory-336109"

  aws_router_asn      = 65000
  aws_vpc_id          = "vpc-0134df1991a2d09a9"
  aws_private_subnets = ["subnet-0e75d0b4bc616991e","subnet-013fff4443526969d","subnet-02057b3cca00f37a2"]
}