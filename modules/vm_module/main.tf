resource "google_compute_instance" "my_firstvm1" {
  name         = var.name
  machine_type = var.machine_type
  zone         =  var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}