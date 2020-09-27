#-------------------------ssh_firewall
resource "google_compute_firewall" "firewall" {
  name    = "allow-${var.source_tags}"
  network = "${var.network}"
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["${var.ports}"]
  }
  source_ranges = ["0.0.0.0/0"]
  source_tags = ["${var.source_tags}"]
}