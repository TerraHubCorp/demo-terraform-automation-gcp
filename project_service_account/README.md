# google_service_account

Allows management of a Google Cloud Platform service account

## input variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|google_service_account_display_name|The display name for the service account. Can be updated without creating a new resource.|string|project-service-account|No|
|google_account_id|The service account ID. Changing this forces a new service account to be created.|string||Yes|
|google_project_id|The ID of the project that the service account will be created in. Defaults to the provider project configuration.|string||Yes|

## output parameters

| Name | Description | Type |
|------|-------------|:----:|
|email|The e-mail address of the service account. This value should be referenced from any google_iam_policy data sources that would grant the service account privileges.|string|
|name|The fully-qualified name of the service account.|string|
|unique_id|The unique id of the service account.|string|