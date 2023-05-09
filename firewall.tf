resource "google_compute_firewall" "allow-iap" {
  name    = "allow-iap"
  network = google_compute_network.seada-vpc.id
  allow {
    protocol = "tcp"
    ports    = ["22","80"]
  }
  direction     = "INGRESS"
  source_ranges = ["0.0.0.0/0"]
}