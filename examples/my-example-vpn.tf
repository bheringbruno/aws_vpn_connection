module "my-example" {
  source = "../module"
  
  ### VPN GATEWAY
  vpc_id = "vpc-2de78d57"

  ### CUSTOMER GATEWAY
  name = "my-example"
  customer_gateway_bgp_asn  = "65000"
  customer_gateway_ip = "200.160.2.3"
  customer_gateway_type = "ipsec.1"

  ### CLIENT CIDR
  local_ipv4_network_cidr = "20.20.20.0/24"

  ### AWS CIDR
  remote_ipv4_network_cidr = "10.10.10.0/24"

  static_routes_only  = false

  ### TUNEL 1 ###
  tunnel1_ike_versions = ["ikev1"]
  tunnel1_preshared_key = "sec123sec123" 

  ### FASE 1 ###
  tunnel1_lifetime_sec = 28800
  tunnel1_phase1_encryption_algorithms = ["AES256", "AES128"]
  tunnel1_phase1_integrity_algorithms = ["SHA2-256"]
  tunnel1_phase1_dh_group_numbers = ["20"]

  ### FASE 2 ###
  tunnel1_phase2_dh_group_numbers = ["20"]
  tunnel1_phase2_integrity_algorithms = ["SHA2-256"]
  tunnel1_phase2_encryption_algorithms = ["AES256", "AES128"]


  ### TUNEL 2 ###
  tunnel2_ike_versions = ["ikev1"]
  tunnel2_preshared_key = "sec123sec123" 

  ### FASE 1 ###
  tunnel2_lifetime_sec = 28800
  tunnel2_phase1_encryption_algorithms = ["AES256", "AES128"]
  tunnel2_phase1_integrity_algorithms = ["SHA2-256"]
  tunnel2_phase1_dh_group_numbers = ["20"]

  ### FASE 2 ###
  tunnel2_phase2_encryption_algorithms = ["AES256", "AES128"]
  tunnel2_phase2_integrity_algorithms = ["SHA2-256"]
  tunnel2_phase2_dh_group_numbers = ["20"]
}