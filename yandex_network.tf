resource "yandex_vpc_subnet" "subnet-1" {
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.netowrk-terraform.id
  v4_cidr_blocks = ["10.2.0.0/24"]
}

resource "yandex_vpc_network" "netowrk-terraform" {}
