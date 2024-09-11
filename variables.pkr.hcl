variable "nutanix_username" {
  description = "The username for authenticating with the Nutanix API."
  type        = string
}

variable "nutanix_password" {
  description = "The password for authenticating with the Nutanix API."
  type        = string
}

variable "nutanix_endpoint" {
  description = "The endpoint URL of the Nutanix API."
  type        = string
}

variable "cluster_name" {
  description = "The name of the Nutanix cluster."
  type        = string
}

variable "source_image_name" {
  description = "The name of the source image to use for the VM."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet where the VM will be created."
  type        = string
}

variable "ssh_password" {
  description = "The password for SSH access to the VM."
  type        = string
}

variable "ssh_username" {
  description = "The username for SSH access to the VM."
  type        = string
}
