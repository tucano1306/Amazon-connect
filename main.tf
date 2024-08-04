provider "aws" {
  region = var.aws_region
}

resource "aws_directory_service_directory" "example" {
  name     = var.directory_name
  password = var.directory_password
  size     = var.directory_size
  edition  = var.directory_edition
  vpc_settings {
    vpc_id     = var.vpc_id
    subnet_ids = var.subnet_ids
  }
}

resource "aws_workspaces_directory" "example" {
  directory_id = aws_directory_service_directory.example.id
}

resource "aws_workspaces_workspace" "example" {
  directory_id = aws_workspaces_directory.example.directory_id
  bundle_id    = var.workspace_bundle_id
  user_name    = var.workspace_user_name
  root_volume_encryption_enabled = var.root_volume_encryption_enabled
  user_volume_encryption_enabled = var.user_volume_encryption_enabled
  workspace_properties {
    compute_type_name                         = var.compute_type_name
    root_volume_size_gib                      = var.root_volume_size_gib
    user_volume_size_gib                      = var.user_volume_size_gib
    running_mode                              = var.running_mode
    running_mode_auto_stop_timeout_in_minutes = var.running_mode_auto_stop_timeout_in_minutes
  }
  tags = {
    Department = var.department_tag
  }
}