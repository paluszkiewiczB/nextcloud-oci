locals {
  default_tags = {
    "Environment" = "Test"
    "CreatedBy"   = "Terraform"
  }
}

resource "oci_identity_compartment" "test" {
  name        = "test"
  description = "compartment created for testing purposes"
}

resource "oci_core_vcn" "test" {
  compartment_id = oci_identity_compartment.test.compartment_id
  cidr_blocks    = [
    "10.0.1.0/24"
  ]
  freeform_tags = local.default_tags
  display_name  = "test-terraform-vcn"
}