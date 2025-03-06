# Declare the hyperv_network_switch resource
resource "hyperv_network_switch" "Lan" {
  name                = "Lan"
  allow_management_os = true
  switch_type         = "Internal"
}
