terraform {
  required_providers {
    ncloud = {
      source = "NaverCloudPlatform/ncloud"
      version = "2.3.0"
    }
  }
}

provider "ncloud" {
  access_key  = "${var.access_key}"
  secret_key  = "${var.secret_key}"
  region      = "KR"
}
