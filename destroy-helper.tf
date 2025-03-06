resource "null_resource" "force_shutdown_vm_on_destroy" {
  triggers = {
    vm_names = hyperv_machine_instance.default.name
    host     = var.hyperv_host_name
    user     = var.hyperv_user
    password = var.hyperv_password
  }
  provisioner "local-exec" {
    when    = destroy
    command = <<EOT
      curl -k -u "${self.triggers.user}:${self.triggers.password}" \
      -H "Content-Type: application/json" \
      -d '{"PowerShell":"Stop-VM -Name ${self.triggers.vm_names} -TurnOff -Force; while((Get-VM -Name ${self.triggers.vm_names}).State -ne \"Off\") { Start-Sleep -s 2 }}"}' \
      https://${self.triggers.host}:5986/wsman
    EOT
  }
}