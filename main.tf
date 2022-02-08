terraform {
  required_providers {
    vultr = {
      source  = "vultr/vultr"
      version = "2.9.1"
    }
  }
}

provider "vultr" {
  api_key     = var.vultr_api_key
  rate_limit  = var.vultr_rate_limit
  retry_limit = var.vultr_retry_limit
}