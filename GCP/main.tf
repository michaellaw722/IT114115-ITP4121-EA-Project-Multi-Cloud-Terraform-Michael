provider "google" {
  credentials = file("myCredentials.json")
  project     = "terraform-project-420504"
  region      = "asia-east2"
}

resource "google_compute_network" "CloudProject-network" {
  project                 = "terraform-project-420504"
  name                    = "cloudnetwork"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "PrivateSubnet1" {
  name          = "privatesubnet1"
  ip_cidr_range = "10.0.1.0/24"
  region        = "asia-east2"
  network       = google_compute_network.CloudProject-network.id
}

resource "google_compute_subnetwork" "PrivateSubnet2" {
  name          = "privatesubnet2"
  ip_cidr_range = "10.0.2.0/24"
  region        = "asia-east2"
  network       = google_compute_network.CloudProject-network.id
}

resource "google_compute_subnetwork" "PublicSubnet1" {
  name          = "publicsubnet1"
  ip_cidr_range = "10.0.3.0/24"
  region        = "asia-east2"
  network       = google_compute_network.CloudProject-network.id
}

resource "google_compute_subnetwork" "PublicSubnet2" {
  name          = "publicsubnet2"
  ip_cidr_range = "10.0.4.0/24"
  region        = "asia-east2"
  network       = google_compute_network.CloudProject-network.id
}
