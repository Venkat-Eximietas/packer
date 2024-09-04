packer {
  required_plugins {
    nutanix = {
      version = ">= 0.8.0"
      source  = "github.com/nutanix-cloud-native/nutanix"
    }
  }
}

source "nutanix" "ubuntu" {
  nutanix_username = "admin"
  nutanix_password = "nx2Tech278!"
  nutanix_endpoint = "10.38.203.37"
  nutanix_port     = 9440
  nutanix_insecure = true
  cluster_name     = "PHX-POC203"
  os_type          = "Linux"

  vm_disks {
    image_type        = "DISK_IMAGE"
    source_image_name = "ubuntu-24-cloud.img"
  }



  vm_nics {
    subnet_name = "primary"
  }

  image_categories {
    key   = "TemplateType"
    value = "Vm"
  }

  vm_categories {
    key   = "Environment"
    value = "Testing"
  }


  vm_name      = "Packer-Ubuntu-Image-${formatdate("MMDDYYYY", timestamp())}"
  image_name   = "Packer-Ubuntu-Image-${formatdate("MMDDYYYY", timestamp())}"

  force_deregister = true

  user_data         = base64encode(file("scripts/config-ubuntu.yaml"))
  shutdown_command  = "echo 'packer' | sudo -S shutdown -P now"
  shutdown_timeout = "2m"
  ssh_password     = "packer"
  ssh_username     = "venkateswara"
}