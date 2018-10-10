resource "google_service_account_key" "project_service_account_key" {
  service_account_id = "${var.google_service_account_name}@${var.google_project_id}.iam.gserviceaccount.com"
  key_algorithm      = "${var.google_service_account_key_algorithm}"
  public_key_type    = "${var.google_service_account_key_public_key_type}"
  private_key_type   = "${var.google_service_account_key_private_key_type}"
}