output "external_ip_address_vm-1" {
  value = yandex_compute_instance.vm-1.network_interface.0.nat_ip_address
}

output "external_ip_address_vm-2" {
  value = yandex_compute_instance.vm-2.network_interface.0.nat_ip_address
}