resource "vultr_instance" "collins" {
  plan     = var.vultr_instance_plan
  region   = var.vultr_instance_region
  os_id    = var.vultr_os_id
  hostname = "collins"
  ssh_key_ids = [vultr_ssh_key.collinsmuriuki.id] 
  
  // XXX: Check on this issue
  //    https://github.com/vultr/terraform-provider-vultr/issues/208#issuecomment-1041480130
  lifecycle {
    ignore_changes = [ssh_key_ids]
  }
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