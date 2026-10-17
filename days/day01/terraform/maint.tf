resource "google_compute_instance" "instance-20261015-174206" {
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2404-lts-amd64"
      size  = 10
      type  = "pd-balanced"
    }
  }
  confidential_instance_config {
    enable_confidential_compute = false
  }
  description = ""
  instance_encryption_key {
  }
  key_revocation_action_type = "NONE"
  machine_type               = "e2-micro"
  name                       = "instance-20261015-174206"
  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }
    stack_type         = "IPV4_ONLY"
    subnetwork         = "projects/project-b66f1fdb-413e-4aa1-b56/regions/us-central1/subnetworks/default"
    subnetwork_project = "project-b66f1fdb-413e-4aa1-b56"
  }
  reservation_affinity {
    type = "ANY_RESERVATION"
  }
  scheduling {
    on_host_maintenance = "MIGRATE"
    provisioning_model  = "STANDARD"
  }
  service_account {
    email  = "1017084868332-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }
  tags = []
  zone = "us-central1-a"
}


