variable "cidr_block" {
    type = string
      description = "CIDR block for VPC" 
}

variable "public_subnet_cidrs" {
    type = list(string)
    


}

variable "private_subnet_cidrs" {
    type = list(string)         

}

variable "availability_zones" {
    type = list(string)
}
