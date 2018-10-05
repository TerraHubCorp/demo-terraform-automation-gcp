# google_project

Allows creation and management of a Google Cloud Platform project.

Projects created with this resource must be associated with an Organization. See the Organization documentation for more details.

The service account used to run Terraform when creating a google_project resource must have roles/resourcemanager.projectCreator. See the Access Control for Organizations Using IAM doc for more information.

Note that prior to 0.8.5, google_project functioned like a data source, meaning any project referenced by it had to be created and managed outside Terraform. As of 0.8.5, google_project functions like any other Terraform resource, with Terraform creating and managing the project. To replicate the old behavior, either:

- Use the project ID directly in whatever is referencing the project, using the google_project_iam_policy to replace the old policy_data property.
- Use the import functionality to import your pre-existing project into Terraform, where it can be referenced and used just like always, keeping in mind that Terraform will attempt to undo any changes made outside Terraform.

It's important to note that any project resources that were added to your Terraform config prior to 0.8.5 will continue to function as they always have, and will not be managed by Terraform. Only newly added projects are affected.

## input variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|google_project_name|The display name of the project.|string|test-team-project|No|
|google_project_id|The project ID. Changing this forces a new project to be created.|string|test-team-project-f2754a99|No|
|google_org_id|The numeric ID of the organization this project belongs to. Changing this forces a new project to be created. Only one of org_id or folder_id may be specified. If the org_id is specified then the project is created at the top level. Changing this forces the project to be migrated to the newly specified organization.|string||No|
|google_project_folder_id|The numeric ID of the folder this project should be created under. Only one of org_id or folder_id may be specified. If the folder_id is specified, then the project is created under the specified folder. Changing this forces the project to be migrated to the newly specified folder.|string||No|
|google_billing_account|The alphanumeric ID of the billing account this project belongs to. The user or service account performing this operation with Terraform must have Billing Account Administrator privileges (roles/billing.admin) in the organization. See Google Cloud Billing API Access Control for more details.|string||No|
|google_project_skip_delete|If true, the Terraform resource can be deleted without deleting the Project via the Google API.|boolean|false|No|
|google_project_auto_create_network|If true, the Terraform resource can be deleted without deleting the Project via the Google API.|boolean|false|No|
|custom_labels|Custom labels. A set of key/value label pairs to assign to the project.|map||No|
|default_labels|Default labels. A set of key/value label pairs to assign to the project.|map|{"ThubName"= "test-team-project","ThubCode"= "f2754a99","ThubEnv"= "default","Description" = "Managed by TerraHub"}|No|

## output parameters

| Name | Description | Type |
|------|-------------|:----:|
|number|The numeric identifier of the project.|string|