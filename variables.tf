variable "file_system_id" {
  description = "The ID of the file system for which the mount target is intended"
}

variable "subnet_id" {
  description = "The ID of the subnet to add the mount target in"
}

variable "ip_address" {
  description = "The address at which the file system may be mounted via the mount target"
  default     = null
}

variable "security_groups" {
  description = "A list of up to 5 VPC security group IDs"
  type        = list(string)
  default     = []
}