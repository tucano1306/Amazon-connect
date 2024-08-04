variable "aws_region" {
  description = "The AWS region to deploy resources in."
  default     = "us-west-2"
}

variable "directory_name" {
  description = "The name of the directory."
  default     = "example.com"
}

variable "directory_password" {
  description = "The password for the directory."
  default     = "SuperSecretPassw0rd!"
}

variable "directory_size" {
  description = "The size of the directory."
  default     = "Small"
}

variable "directory_edition" {
  description = "The edition of the directory."
  default     = "Standard"
}

variable "vpc_id" {
  description = "The ID of the VPC."
  default     = "vpc-12345678"
}

variable "subnet_ids" {
  description = "The IDs of the subnets."
  type        = list(string)
  default     = ["subnet-12345678", "subnet-87654321"]
}

variable "workspace_bundle_id" {
  description = "The ID of the WorkSpaces bundle."
  default     = "wsb-0xxxxxxxx"
}

variable "workspace_user_name" {
  description = "The user name for the WorkSpace."
  default     = "hr_employee"
}

variable "root_volume_encryption_enabled" {
  description = "Enable encryption for the root volume."
  default     = true
}

variable "user_volume_encryption_enabled" {
  description = "Enable encryption for the user volume."
  default     = true
}

variable "compute_type_name" {
  description = "The compute type of the WorkSpace."
  default     = "STANDARD"
}

variable "root_volume_size_gib" {
  description = "The size of the root volume in GiB."
  default     = 80
}

variable "user_volume_size_gib" {
  description = "The size of the user volume in GiB."
  default     = 50
}

variable "running_mode" {
  description = "The running mode of the WorkSpace."
  default     = "AUTO_STOP"
}

variable "running_mode_auto_stop_timeout_in_minutes" {
  description = "The auto stop timeout in minutes."
  default     = 60
}

variable "department_tag" {
  description = "The department tag for the WorkSpace."
  default     = "HR"
}