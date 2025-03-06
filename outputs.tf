###############################################################################
# outputs.tf
###############################################################################

# Outputs all known attributes for every VM you created with hyperv_machine_instance.control_node_vm
# Because count is used, this will be a list of objects: one object per VM instance.
output "control_node_vms" {
  description = "All known attributes for the created VM instances."
  value       = hyperv_machine_instance.control_node_vm
}

# Outputs all known attributes for every VHD you created with hyperv_vhd.control_node_vhd
# Because count is used, this will also be a list of objects: one object per VHD instance.
output "control_node_vhds" {
  description = "All known attributes for the created VHDs."
  value       = hyperv_vhd.control_node_vhd
}
