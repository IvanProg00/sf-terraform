resource "yandex_compute_instance" "vm-1" {
  name = "vm-1"
  zone = var.yandex_compute_instance.zone

  resources {
    cores  = var.yandex_resources.cores
    memory = var.yandex_resources.memory
  }
  boot_disk {
    initialize_params {
      image_id = var.yandex_compute_instance.image_id
      size     = var.yandex_compute_instance.size
    }
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }
  metadata = {
    ssh-keys = "ubuntu:${file(var.yandex_sshpub)}"
  }
}

resource "yandex_compute_instance" "vm-2" {
  name = "vm-2"
  zone = var.yandex_compute_instance.zone

  resources {
    cores  = var.yandex_resources.cores
    memory = var.yandex_resources.memory
  }
  boot_disk {
    initialize_params {
      image_id = var.yandex_compute_instance.image_id
      size     = var.yandex_compute_instance.size
    }
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }
  metadata = {
    ssh-keys = "ubuntu:${file(var.yandex_sshpub)}"
  }
}
