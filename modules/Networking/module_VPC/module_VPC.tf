

resource "google_compute_network" "Terra-First-VPC" {
    name = var.Network_name
    project = var.Network_Project_ID
    auto_create_subnetworks = false
    
}

