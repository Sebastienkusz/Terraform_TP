variable "vm_name" {
  type        = string
  description = "(Required) The name of the virtual machine"
  nullable    = false
}

variable "subnet_id" {
  type        = string
  description = "(Required) The parameter of subnet"
  nullable    = false
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

variable "number" {
  type        = number
  description = "The number of virtual machine."
  nullable    = false
  default     = 1
}