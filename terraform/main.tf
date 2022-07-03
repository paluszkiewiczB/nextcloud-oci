locals {
  default_tags = {
    "Environment" = "Test"
    "CreatedBy"   = "Terraform"
  }
}

resource "oci_core_vcn" "test" {
  compartment_id = var.compartment_id
  cidr_blocks    = [
    "10.0.1.0/16"
  ]
  defined_tags = local.default_tags
}