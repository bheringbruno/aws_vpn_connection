resource "aws_vpn_connection" "main" {

  vpn_gateway_id      = aws_vpn_gateway.vpn_gateway.id
  customer_gateway_id = aws_customer_gateway.customer_gateway.id
  type                = aws_customer_gateway.customer_gateway.customer_gateway_type

  local_ipv4_network_cidr = var.local_ipv4_network_cidr
  remote_ipv4_network_cidr = var.remote_ipv4_network_cidr
  static_routes_only  = var.static_routes_only

  ### TUNEL 1 ###
  tunnel1_ike_versions = var.tunnel1_ike_versions
  tunnel1_preshared_key = var.tunnel1_preshared_key

  ### FASE 1 ###
  tunnel1_phase1_lifetime_seconds = var.tunnel1_lifetime_sec
  tunnel1_phase1_encryption_algorithms = var.tunnel1_phase1_encryption_algorithms
  tunnel1_phase1_integrity_algorithms = var.tunnel1_phase1_integrity_algorithms
  tunnel1_phase1_dh_group_numbers = var.tunnel1_phase1_dh_group_numbers

  ### FASE 2 ###
  tunnel1_phase2_dh_group_numbers = var.tunnel1_phase2_dh_group_numbers
  tunnel1_phase2_integrity_algorithms = var.tunnel1_phase2_integrity_algorithms
  tunnel1_phase2_encryption_algorithms = var.tunnel1_phase2_encryption_algorithms


  ### TUNEL 2 ###
  tunnel2_ike_versions = var.tunnel2_ike_versions
  tunnel2_preshared_key = var.tunnel2_preshared_key

  ### FASE 1 ###
  tunnel2_phase1_lifetime_seconds = var.tunnel2_lifetime_sec
  tunnel2_phase1_encryption_algorithms = var.tunnel2_phase1_encryption_algorithms
  tunnel2_phase1_integrity_algorithms = var.tunnel2_phase1_integrity_algorithms
  tunnel2_phase1_dh_group_numbers = var.tunnel2_phase1_dh_group_numbers

  ### FASE 2 ###
  tunnel2_phase2_encryption_algorithms = var.tunnel2_phase2_encryption_algorithms
  tunnel2_phase2_integrity_algorithms = var.tunnel2_phase2_integrity_algorithms
  tunnel2_phase2_dh_group_numbers = var.tunnel2_phase2_dh_group_numbers

}