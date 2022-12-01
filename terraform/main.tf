# Создание ВМ с помощью написанного модуля

module "yandex_instance_1" {
  source               = "./modules/create_vm"
  instance_subnet_name = "a-ru-central1-a"
  instance_name        = "nginx"
  zone_name            = "ru-central1-a"
}


module "yandex_instance_2" {
  source                = "./modules/create_vm"
  disk_size	        = "10"
  instance_subnet_name  = "a-ru-central1-a"
  instance_name         = "php-fpm"
  zone_name             = "ru-central1-a"
}

