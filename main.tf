provider "google" {
  credentials = "${file("sound-groove-333122-e550405d0670.json")}"
  project = "sound-groove-333122"
  region  = "southamerica-east1"
  zone    = "southamerica-east1-a"
}

resource "google_compute_instance" "vm_instance" {
  name         = "vm-debian"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
 network_interface {
    # Rede default
    network = "default"
    access_config {
    }
  }
}
