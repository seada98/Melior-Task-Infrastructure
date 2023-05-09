provider "google" {
  project     = "melior-task"
  region      = "us-central1"
  credentials = file("melior-task-713620a88b5d.json")
}