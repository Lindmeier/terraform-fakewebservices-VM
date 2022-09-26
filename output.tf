# ------------------------------------------------------------------------------
# Output Parameter
# ------------------------------------------------------------------------------

output "vm_id" {
  value       = fakewebservices_server.vm.id
  description = "if of the created server"
}
