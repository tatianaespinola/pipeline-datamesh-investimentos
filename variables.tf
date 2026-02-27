variable "aws_region" {
  type        = string
  description = "Região AWS"
  default     = "us-east-1"
}

variable "database_name_sor" {
  type        = string
  description = "Nome do Glue Database"
  default     = "investimentos_sor"
}

variable "database_name_sot" {
  type        = string
  description = "Nome do Glue Database"
  default     = "investimentos_sot"
}

variable "database_name_spec" {
  type        = string
  description = "Nome do Glue Database"
  default     = "investimentos_spec"
}

variable "table_sor_name" {
  type        = string
  description = "Nome da tabela no Glue"
  default     = "sor_investimentos"
}

variable "table_sot_name" {
  type        = string
  description = "Nome da tabela no Glue"
  default     = "sot_investimentos"
}

variable "table_spec_name" {
  type        = string
  description = "Nome da tabela no Glue"
  default     = "spec_investimentos"
}

variable "s3_location_sor" {
  type        = string
  description = "Localização dos dados no S3"
  default     = "s3://tatiana-bucket-sor-investimentos/"
}

variable "s3_location_sot" {
  type        = string
  description = "Localização dos dados no S3"
  default     = "s3://tatiana-bucket-sot-investimentos/"
}

variable "s3_location_spec" {
  type        = string
  description = "Localização dos dados no S3"
  default     = "s3://tatiana-bucket-spec-investimentos/"
}
