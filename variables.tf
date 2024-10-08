variable "gcp_project_id" {}

variable "gcp_region" {
  default = "us-west1"

}
variable "gcp_credentials" {}

variable "GOOGLE_CREDENTIALS" {
  type        = string
  description = "The credentials file for the Google Cloud provider."
  sensitive   = true
}
