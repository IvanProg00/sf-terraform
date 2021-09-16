terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.63.1"
    }
  }
}

provider "yandex" {
  token     = var.yandex_token
  cloud_id  = var.yandex_cloud
  folder_id = var.yandex_folder
  zone      = var.yandex.zone
}
