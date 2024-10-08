resource "google_storage_bucket" "terraform-bucket" {
  location      = "US"
  name          = "${var.gcp_project_id}--bucket"
  force_destroy = true
}

resource "google_compute_instance" "web-server" {
  machine_type = "f1-micro"
  name         = "web-server"
  zone         = "us-east4-b"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    subnetwork_project = var.gcp_project_id
    network            = "default"
    subnetwork         = "default"
  }
  scheduling {
    preemptible        = true
    automatic_restart  = false
    provisioning_model = "SPOT"
  }
}