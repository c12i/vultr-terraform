resource "vultr_instance" "collins" {
  plan        = var.vultr_instance_plan
  region      = var.vultr_instance_region
  os_id       = var.vultr_os_id
  hostname    = "collins"
	# TODO: Manually add on vultr as ssh_key_ids on terraform are only valid for Linux/FreeBSD and not Debian 10
	#       https://registry.terraform.io/providers/vultr/vultr/latest/docs/resources/instance
  # ssh_key_ids = [vultr_ssh_key.collinsmuriuki.id] 
}

resource "vultr_ssh_key" "collinsmuriuki" {
  name    = "collinsmuriuki"
  ssh_key = var.vultr_ssh_key
}