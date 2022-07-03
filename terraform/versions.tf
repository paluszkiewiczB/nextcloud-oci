terraform {
  required_version = "1.2.4"

  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "4.82.0"
    }
  }
}

variable "oci" {
  description = "configuration of oci provider"
  sensitive   = true
  type        = object({
    tenancy_ocid = string
    user_ocid    = string
    fingerprint  = string
    private_key  = string
    region       = string
  })
}

provider "oci" {
  tenancy_ocid     = var.oci.tenancy_ocid
  user_ocid        = var.oci.user_ocid
  fingerprint      = var.oci.fingerprint
  private_key_path = var.oci.private_key
  region           = var.oci.region
}

