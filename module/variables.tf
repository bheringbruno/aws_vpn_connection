variable "name" {
  default = ""
}

variable "vpc_id" {
  default = ""
}

variable "customer_gateway_bgp_asn" {
  description = "The Border Gateway Protocol"
  default = "65000"
}

variable "customer_gateway_ip" {
  description = "The Customer Gateway IP Address"
  default = ""
}

variable "customer_gateway_type" {
  default = "ipsec.1"
}


variable "local_ipv4_network_cidr" {
  description = "The Client network CIDR"
  default = ""
}

variable "remote_ipv4_network_cidr" {
  description = "The AWS network CIDR"
  default = ""
}

variable "tunnel1_ike_versions" {
  description = "The Tunel1 IKE version"
  default = "ikev1"
}

variable "tunnel2_ike_versions" {
  description = "The Tunel1 IKE version"
  default = "ikev1"
}

variable "tunnel1_lifetime_sec" {
  description = "The lifetime for phase 1 of the IKE negotiation for the first VPN tunnel, in seconds."
  default = 28800
}

variable "tunnel2_lifetime_sec" {
  description = "The lifetime for phase 2 of the IKE negotiation for the first VPN tunnel, in seconds."
  default = 28800 
}

variable "tunnel1_phase1_encryption_algorithms" {
  description = "Valid values are: AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16."
  default = "AES256" 
}

variable "tunnel1_phase2_encryption_algorithms" {
  description = "Valid values are: AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16."
  default = "AES256" 
}

variable "tunnel2_phase1_encryption_algorithms" {
  description = "Valid values are: AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16."
  default = "AES256" 
}

variable "tunnel2_phase2_encryption_algorithms" {
  description = "Valid values are: AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16."
  default = "AES256" 
}

variable "tunnel1_phase1_integrity_algorithms" {
  description = "Valid values are: SHA1 | SHA2-256 | SHA2-384 | SHA2-512."
  default = "SHA2-256" 
}

variable "tunnel1_phase2_integrity_algorithms" {
  description = "Valid values are: SHA1 | SHA2-256 | SHA2-384 | SHA2-512."
  default = "SHA2-256" 
}

variable "tunnel2_phase1_integrity_algorithms" {
  description = "Valid values are: SHA1 | SHA2-256 | SHA2-384 | SHA2-512."
  default = "SHA2-256" 
}

variable "tunnel2_phase2_integrity_algorithms" {
  description = "Valid values are: SHA1 | SHA2-256 | SHA2-384 | SHA2-512."
  default = "SHA2-256" 
}

variable "tunnel1_phase1_dh_group_numbers" {
  description = "Valid values are: 2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24."
  default = null 
}

variable "tunnel1_phase2_dh_group_numbers" {
  description = "Valid values are: 2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24."
  default = null 
}

variable "tunnel2_phase1_dh_group_numbers" {
  description = "Valid values are: 2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24."
  default = null 
}

variable "tunnel2_phase2_dh_group_numbers" {
  description = "Valid values are: 2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24."
  default = null 
}

variable "tunnel1_preshared_key" {
  default = ""
  sensitive   = true
}

variable "tunnel2_preshared_key" {
  default = ""
  sensitive   = true
}

variable "static_routes_only" {
  type = bool
  default = true
}

variable "subnet_id" {
  default = ""
}

variable "tag" {
  default = "terraform"
}
