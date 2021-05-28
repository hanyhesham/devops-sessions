## GKE cluster
resource "google_container_cluster" "primary" {
  provider = google
  description  = var.description
  name  = var.name
  location = var.region
  project  = var.project_id
  initial_node_count = 1
  remove_default_node_pool = true
  network    = var.network
  subnetwork = var.subnet
}

## Separately Managed Node Pool
resource "google_container_node_pool" "primary" {
  name       = "${var.name}-primary"
  location   = var.region
  cluster    = var.name
  project  = var.project_id
  node_count = 1
  autoscaling {
    min_node_count = var.min_node_count
    max_node_count = var.max_node_count
  }
  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
    machine_type = var.machine_type
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}

