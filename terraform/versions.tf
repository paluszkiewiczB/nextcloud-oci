terraform {
  required_version = "1.2.4"

  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "4.82.0"
    }
  }
}

variable "tenancy_ocid" {
  type      = string
  sensitive = true
}
variable "user_ocid" {
  type      = string
  sensitive = true
}
variable "fingerprint" {
  type      = string
  sensitive = false
}
variable "private_key" {
  type      = string
  sensitive = true
}
variable "region" {
  type      = string
  sensitive = false
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key
  region           = var.region
}

