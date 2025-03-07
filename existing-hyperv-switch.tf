# Declare the hyperv_network_switch resource
# tofu import hyperv_network_switch.switch1 switch1
resource "hyperv_network_switch" "switch1" {
  name                = "switch1"
  allow_management_os = true
  switch_type         = "External"
  net_adapter_names   = ["Ethernet"]

  lifecycle {
    prevent_destroy = true
}

}

