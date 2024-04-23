provider "google" {
  credentials = file("myCredentials.json")
  project     = "${var.project_id}"
  region      = "${var.gcp_region}"
}

resource "google_compute_network" "CloudProject-network" {
  project                 = "${var.project_id}"
  name                    = "${var.network_name}"
  auto_create_subnetworks = false
  mtu                     = "${var.network_mtu}"
}

resource "google_compute_subnetwork" "PrivateSubnet1" {
  name          = "${var.PrivateSubnet1_name}"
  ip_cidr_range = "${var.PrivateSubnet1_CIDR}"
  region        = "${var.gcp_region}"
  network       = google_compute_network.CloudProject-network.id
}

resource "google_compute_subnetwork" "PrivateSubnet2" {
  name          = "${var.PrivateSubnet2_name}"
  ip_cidr_range = "${var.PrivateSubnet2_CIDR}"
  region        = "${var.gcp_region}"
  network       = google_compute_network.CloudProject-network.id
}

resource "google_compute_subnetwork" "PublicSubnet1" {
  name          = "${var.PublicSubnet1_name}"
  ip_cidr_range = "${var.PublicSubnet1_CIDR}"
  region        = "${var.gcp_region}"
  network       = google_compute_network.CloudProject-network.id
}

resource "google_compute_subnetwork" "PublicSubnet2" {
  name          = "${var.PublicSubnet2_name}"
  ip_cidr_range = "${var.PublicSubnet2_CIDR}"
  region        = "${var.gcp_region}"
  network       = google_compute_network.CloudProject-network.id
}
