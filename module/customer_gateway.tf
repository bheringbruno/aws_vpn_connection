resource "aws_vpn_gateway" "vpn_gateway" {
  vpc_id = var.vpc_id
}

resource "aws_customer_gateway" "customer_gateway" {
  device_name = "${var.name}-customer_gateway"
  bgp_asn    = var.customer_gateway_bgp_asn
  ip_address = var.customer_gateway_ip
  type       = var.customer_gateway_type
}
