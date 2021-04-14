provider "google" {
  credentials = file("credentials.json")
  project = "stellar-zoo-308020"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_instance" "terraform" {
  name = "terraform-application-server"
  machine_type = "f1-micro"

  boot_disk {
   initialize_params {
     image = "debian-cloud/debian-9"
   }
}
  network_interface {
    network = "default"

    access_config {

    }
  }
}