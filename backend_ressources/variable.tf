

variable "region" {
  type = string
  default = "us-east-2"
}

variable "bucket-name" {
  type = string
  default = "remote-backend-bucket"
}

variable "file-key" {
  type = string
  default = "terraform.tfstate"
}

variable "file-source" {
  type = string
  default = "C:/Users/JAC COMPUTERS SARL/Documents/PRROJECTS/Project 11_Deploy Jenkins Server Using Terraform then configure the remote backend/terraform.tfstate"
}

variable "table_name" {
  type = string
  default = "terraform-locking"
}

variable "table_billing_mode" {
  description = "Controls how you are charged for read and write throughput and how you manage capacity."
  default = "PAY_PER_REQUEST"
}
