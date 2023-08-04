variable "vm_name" {
  type        = string
  description = "(Required) The name of the virtual machine"
  nullable    = false
}

variable "subnets" {
  type        = map(string)
  description = "(Required) The parameter of subnet"
  default     = {}
}

variable "location" {
  type        = string
  description = "(Required) The location/region where the virtual network is created. Changing this forces a new resource to be created."
  nullable    = false
  default     = "westeurope"
}

variable "resource_group" {
  type        = string
  description = "(Required) The name of the resource group in which to create the virtual network."
  nullable    = false
}

variable "public_access" {
  type        = bool
  description = "The public IP of the virtual machine."
  nullable    = false
  default     = false
}