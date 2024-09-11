packer {
  required_plugins {
    nutanix = {
      version = ">= 0.8.0"
      source  = "github.com/nutanix-cloud-native/nutanix"
    }
  }
}

source "nutanix" "ubuntu" {
<<<<<<< HEAD
  nutanix_username = "var.nutanix_username"
  nutanix_password = "var.nutanix_password"
  nutanix_endpoint = "var.nutanix_endpoint"
  nutanix_port     = 9440
  nutanix_insecure = true
  cluster_name     = "var.cluster_name"
=======
  nutanix_username = "admin"
  nutanix_password = "nx2Tech291!"
  nutanix_endpoint = "10.42.36.39"
  nutanix_port     = 9440
  nutanix_insecure = true
  cluster_name     = "PHX-POC036"
>>>>>>> 2922ad93922d90412fca77964085fbbd5a21f319
  os_type          = "Linux"

  vm_disks {
    image_type        = "DISK_IMAGE"
<<<<<<< HEAD
    source_image_name = "var.source_image_name"
=======
    source_image_name = "ubuntu-24.04-serve.img"
>>>>>>> 2922ad93922d90412fca77964085fbbd5a21f319
  }



  vm_nics {
    subnet_name = "var.subnet_name"
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
<<<<<<< HEAD
  ssh_password     = "var.ssh_password"
  ssh_username     = "var.ssh_username"
=======
  ssh_password     = "nx2Tech291!"
  ssh_username     = "venkat"
>>>>>>> 2922ad93922d90412fca77964085fbbd5a21f319
}