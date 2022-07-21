terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
    }
  }
}

provider "google" {
    credentials = file("certificationproject01-id-766dad34d103.json")
    #project = "certificationproject01-id"
    
}


module "Terra-module_VPC" {
  source = "./v1.0.0/modules/Networking/module_VPC"
  Network_name = "first-vpc"
  Network_Project_ID  = var.project
}

/*
resource "google_compute_network" "Terra-First-VPC" {
    name = "first-vpc"
    project = "certificationproject01-id"
    
}
*/



