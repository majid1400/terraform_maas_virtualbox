resource "maas_instance" "node1" {
  release_erase       = false
  release_erase_quick = true
}

resource "virtualbox_vm" "node1" {
  count     = 1
  name      = format("node-%02d", count.index + 1)
  image     = "/home/ubuntu/Downloads/ubuntu-20.04.3-desktop-amd64.iso"
  cpus      = 2
  memory    = "512 mib"


  network_adapter {
    type           = "hostonly"
    host_interface = "vboxnet1"
  }
}