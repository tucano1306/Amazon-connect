output "directory_id" {
  description = "The ID of the directory."
  value       = aws_directory_service_directory.example.id
}

output "workspace_id" {
  description = "The ID of the WorkSpace."
  value       = aws_workspaces_workspace.example.id
}

output "workspace_directory_id" {
  description = "The ID of the WorkSpaces directory."
  value       = aws_workspaces_directory.example.directory_id
}