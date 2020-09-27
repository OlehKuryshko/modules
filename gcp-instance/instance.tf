#--------------------instance
resource "google_compute_instance" "instance" {
  count = "${var.number}"
  name                    = "${var.env}-host-${count.index + 1}"
  machine_type            = "${var.machine_type}"
  tags                    = "${var.tags}"
  zone                    = "${var.zone}"
    network_interface {
    subnetwork = "${var.subnetwork}"
    access_config {}
  }
  boot_disk {
    initialize_params {
      image               = "${var.image}"
    }
  }
     metadata = {
    ssh-keys = "${var.gce_ssh_user}:${file("${var.pub_key}")} \n${var.gce_ssh_alex}:${file("${var.pub_key_alex}")} \n${var.gce_ssh_andrii}:${file("${var.pub_key_andrii}")}"
  }
}
