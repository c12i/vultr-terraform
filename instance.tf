resource "vultr_instance" "collins" {
	plan = var.vultr_instance_plan
	region = var.vultr_instance_region
	os_id = var.vultr_os_id
	hostname = "collins"
}