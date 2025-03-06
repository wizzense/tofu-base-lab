output "control_node_ip" {
    description = "IP address of the Control Node VM"
    value       = hyperv_virtual_machine.control_node.ip_address
}

output "secondary_node_ip" {
    description = "IP address of the Secondary Node VM"
    value       = hyperv_virtual_machine.secondary_node.ip_address
}