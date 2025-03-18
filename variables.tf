variable "sub_id" {
  type      = string
  sensitive = true
}

variable "tenant_id" {
  type      = string
  sensitive = true
}

variable "client_id" {
  type = string
}


variable "client_secret" {
  type      = string
  sensitive = true
}

variable "location" {
  type = string
}

variable "rg_name" {
  type = string
}