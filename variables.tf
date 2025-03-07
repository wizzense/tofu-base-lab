###############################################################################
# Optionally store host/user/password as variables if you want to reference
# them in the shutdown script. Adjust defaults/values as needed.
###############################################################################
variable "hyperv_host_name" {
  type    = string
  default = "192.168.1.121"
}

variable "hyperv_user" {
  type    = string
  default = "ad\\administrator"
}

variable "hyperv_password" {
  type    = string
  default = ""
}

variable "iso_path" {
    type  = string
    default = "\\B:\\share\\isos\\3_booststrap_auto_unattend_en-us_windows_server_2025_updated_feb_2025_x64_dvd_3733c10e.iso"
}

###############################################################################
# Number of VMs to create
###############################################################################
variable "number_of_vms" {
  type    = number
  default = 3
}
