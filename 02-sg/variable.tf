variable "project_name" {
   default = "amway"                  #HERE WE HAVE TO SUPPLY THE VARIABLE MANDATORY 
                                        #HERE WE ARE OVERIDING THE VARAIBLE THROUGH MODULES
}

variable "environment" {
    default = "dev"
}

variable "common_tags" {
  default = {
    project ="awmay"
    environment = "dev"
    terraform = true
  }
}

