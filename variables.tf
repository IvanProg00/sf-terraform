variable "yandex_token" {
  type = string
  sensitive = true
}
variable "yandex_cloud" {
  type = string
}
variable "yandex_folder" {
  type = string
}

variable "yandex" {
  type = object({
    zone = string
  })
  default = {
    zone = "ru-central1-a"
  }
}

variable "yandex_compute_instance" {
  type = object({
    zone     = string
    image_id = string
    size     = number
  })

  default = {
    zone     = "ru-central1-a"
    image_id = "fd8urjqioepver7sq82o"
    size     = 8
  }
}

variable "yandex_resources" {
  type = object({
    cores  = number
    memory = number
  })
  default = {
    cores  = 2
    memory = 2
  }
}

variable "yandex_sshpub" {
  type = string
}
