# Define list of variables to be output

output "etag" {
  value = "${google_project_iam_member.project_iam_member.etag}"
}
