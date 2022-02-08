# vultr terraform
My vultr infrastructure as code

## Usage
API and SSH keys are currently stored in `dev.auto.tfvars` (gitignored). Accessible from the vultr console.

```
terraform plan

terraform apply
```

## Note on vultr_instance.ssh_key_ids

ssh key and instance are not linked after running `terraform import`. Manually creating this link prompts resource (instance) replacement, which is not desired


## TODO

Add user data that installs nginx, docker and sets up website + email server