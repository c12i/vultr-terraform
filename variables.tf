variable "vultr_rate_limit" {
  default = 700
  type    = number
}

variable "vultr_retry_limit" {
  default = 3
  type    = number
}

variable "vultr_api_key" {
  default = ""
	sensitive = true
  type    = string
}

variable "vultr_instance_plan" {
	default = "vc2-1c-1gb"
	type = string
}

variable "vultr_instance_region" {
	default = "fra"
	type = string
}

variable "vultr_os_id" {
	default = 352
	desdescription = "Debian 10 x64 (buster)"
	type = number
}