variable "name" {
  default     = "k8s-dev"
  description = "Cluster name"
}

variable "description" {
  default     = "K8s Dev Environment"
}

variable "region" {
  default     = "us-central1"
  description = "Cluster Region"
}

variable "network" {
  default     = "default"
  description = "VPC Network"
}

variable "subnet" {
  default     = "default"
  description = "VPC Network"
}

variable "project_id" {
  default     = "bubbly-display-313214"
  description = "Project Id"
}

variable "machine_type" {
  default     = "n1-standard-2"
  description = "Machines Type"
}

variable "min_node_count" {
  default     = 1
  description = "Minimum number of nodes in the large pool"
}

variable "max_node_count" {
  default     = 1
  description = "Minimum number of nodes in the small pool"
}

