/* provider "google" {
  # Configuration options
  credentials = "key.json"
  project     = "savvy-bay-387007"
  region      =  "us-central1"
}
 */


module "vm_module1" {
  source       = "./vm_module"
  name         = "default"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  image        = "debian-cloud/debian-11"
}


module "vpc_module2" {
    source = "./vpc_module"
      
}