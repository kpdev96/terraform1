resource "google_compute_network" "my_vpc" {
  name                    = "vpc-network1"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "my_subnet1" {
  name          = "my-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.my_vpc.id

}

resource "google_compute_subnetwork" "my_subnet2" {
  name          = "my-subnetworkp1"
  ip_cidr_range = "10.3.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.my_vpc.id

}


resource "google_compute_firewall" "my_fiewal11" {
  name    = "test-firewall1"
  network = google_compute_network.my_vpc.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000"]
  }
   
   allow {
     protocol = "udp"
     ports = ["22" , "443", "3389"]
   }

  source_ranges = ["0.0.0.0/0"]


}
 