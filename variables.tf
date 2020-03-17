variable "file_system_id" {
  description = "The ID of the file system for which the mount target is intended"
}

variable "subnet_id" {
  description = "The ID of the subnet to add the mount target in"
}

variable "ip_address" {
  description = "The address at which the file system may be mounted via the mount target"
}

variable "security_groups" {
  description = "A list of up to 5 VPC security group IDs"
}

variable "tags" {
    description = "A mapping of tags to assign to the resource"
    type        = "map"
    default     = {}
}