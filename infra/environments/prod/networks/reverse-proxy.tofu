resource "incus_network" "reverse_proxy" {
  name = "reverse_proxy"
  type = "ovn"
  config = {
    "ipv4.address" = "10.0.5.1/24"
    "ipv4.nat"     = false
    "network"      = "${incus_network.incusbr0.name}"
  }
}
