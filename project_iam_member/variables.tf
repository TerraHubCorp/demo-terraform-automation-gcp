# Define list of variables to be used in main.tf

#############
# top level #
#############
variable "google_project_id" {
  description = "The project ID. If not specified, uses the ID of the project configured with the provider."
}

variable "google_project_role" {
  description = "The project ID. If not specified, uses the ID of the project configured with the provider."
}

variable "google_project_member" {
  description = "Identities that will be granted the privilege in role."
}
