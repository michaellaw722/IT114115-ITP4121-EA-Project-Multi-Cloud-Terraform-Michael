resource "google_compute_network" "vpc_network" {
  name                    = "CloudProject-network"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "PrivateSubnet1" {
  name          = "my-custom-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region        = "asia-east2"
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_subnetwork" "PrivateSubnet2" {
  name          = "my-custom-subnet"
  ip_cidr_range = "10.0.2.0/24"
  region        = "asia-east2"
  network       = google_compute_network.vpc_network.id
}