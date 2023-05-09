resource "google_compute_network" "seada-vpc" {
  name                    = "seada-vpc"
  project     = "melior-task"
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
}