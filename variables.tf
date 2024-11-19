### project-variables ###
variable "project_name"{
    type = string
}

variable "environment"{
    type = string
    default = "dev"
}

variable "common_tags"{
    type = map
    
}

### vpc ###
variable "expense_vpc_cidr"{
    type = string 
    default = "10.110.0.0/16"
}

variable "dns_hostname"{
    type = bool
    default = true
}

variable vpc_tags{
    type = map
    default = {}
}

### igw ###
variable "igw_tags"{
    type = map
    default = {}
}

### public-subnet ###
variable "public_subnet_cidrs"{
    type = list 
    validation {
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "please provide 2 cidr blocks"
    }
}

variable "public_subnet_tags"{
    type = map 
    default = {}
}

### private-subnet ###

variable "private_subnet_cidrs"{
    type = list 
    validation {
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "please provide 2 cidr blocks"
    }
}

variable "private_subnet_tags"{
    type = map 
    default = {}
}

### database-subnet ###
variable "database_subnet_cidrs"{
    type = list 
    validation {
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "please provide 2 cidr blocks"
    }
}

variable "database_subnet_tags"{
    type = map 
    default = {}
}

### nat ###
variable "ngw_tags"{
    type = map 
    default = {}
}

### route table ###
variable "public_route_table_tags" {
    type = map
    default = {}
    
}

variable "private_route_table_tags" {
    type = map
    default = {}
    
}

variable "database_route_table_tags" {
    type = map
    default = {}
    
}