resource "vsphere_virtual_machine" "vm" {
  name             = "terraform-test"
  resource_pool_id = "ha-root-pool"

  datastore_id     = "5b45015b-36da0b28-974f-0cc47a79db6e"

  num_cpus = 2
  memory   = 1024
#  guest_id = "rhel7Guest"
   guest_id = "other3xLinuxGuest"

  network_interface {
    network_id = "HaNetwork-VM Network"
  }

  disk {
    label = "disk0"
    size  = 20
  }


  cdrom {
    datastore_id = "5b45015b-36da0b28-974f-0cc47a79db6e"
    path         = "iso-files/centos7.iso"
  }
}
