resource "incus_network" "trusted" {
  name = "trusted"
  type = "ovn"
  config = {
    "ipv4.address" = "10.0.0.1/24"
    "ipv4.nat"     = false
    "network"      = "${incus_network.incusbr0.name}"
  }
}
