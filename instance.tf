resource "vultr_instance" "collins" {
  plan     = var.vultr_instance_plan
  region   = var.vultr_instance_region
  os_id    = var.vultr_os_id
  hostname = "collins"
  # TODO: Figure out why this is not imported from vultr after 	terraform import`
  # ssh_key_ids = [vultr_ssh_key.collinsmuriuki.id] 
}

resource "vultr_ssh_key" "collinsmuriuki" {
  name    = "collinsmuriuki"
  ssh_key = var.vultr_ssh_key
}

resource "vultr_startup_script" "init" {
  name = "init"
  script = base64encode(<<EOF
#!/bin/sh

apt upgrade
apt install nginx python-certbot-nginx rsync
nginx
EOF
  )
}