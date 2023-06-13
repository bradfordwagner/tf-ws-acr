variable "name" {
  type        = string
  description = "alphanumeric only"
}

variable "resource_group_name" {
  type = string
}

variable "admin_enabled" {
  default = false
}

variable "anonymous_pull_enabled" {
  type = bool
}
