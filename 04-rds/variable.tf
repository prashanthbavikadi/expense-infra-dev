variable "project_name" {
  default = "amway"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project = "amway"
    Environment = "dev"
    Terraform = "true"
  }
}
variable "zone_name" {
  default = "jpaws10s.online"
}