variable "env" {
  default = "qa"
  type    = string
}

variable "bucket_names" {
  type    = list(string)
  default = ["application-l", "aws-billing-fi"]
}

variable "group_notes" {
  type    = string
  default = ""
}

variable "sms_sns" {
  type    = string
  default = ""
}

variable "msg_centre" {
  type    = string
  default = ""
}

variable "file_management" {
  type    = string
  default = ""
}

variable "halopay_api" {
  type    = string
  default = ""
}

variable "nuera_contacts" {
  type    = string
  default = ""
}

variable "optionplus_file" {
  type    = string
  default = ""
}

variable "dashboard_files" {
  type    = string
  default = ""
}

variable "opp_testing" {
  type    = string
  default = ""
}


variable "ecr_name" {
  type    = string
  default = ""
}



