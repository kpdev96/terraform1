variable "name" {
    type = string
   default = "default"
}

variable "machine_type" {
    type = string
    default = "e2-medium"
}

variable "zone" {
    type = string
    default = "us-central1-a"  
}

variable "image" {
    type = string
    default = "debian-cloud/debian-11"
  
}