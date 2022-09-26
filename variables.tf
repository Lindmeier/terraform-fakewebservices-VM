# ------------------------------------------------------------------------------
# Input Parameter
# ------------------------------------------------------------------------------

variable "official_name" {
  description = "official VM name"
  type        = string
  nullable    = false
}


variable "vm_type" {
  description = "vm_type e.g. webserver"
  type        = string
  nullable    = false
}