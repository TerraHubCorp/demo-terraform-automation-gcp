# google_service_account_key

Creates and manages service account key-pairs, which allow the user to establish identity of a service account outside of GCP. For more information, see the official documentation and API.

## input variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|google_service_account_name|The Service account name of the Key Pair. This can be a string in the format {ACCOUNT} or projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}, where {ACCOUNT} is the email address or unique id of the service account. If the {ACCOUNT} syntax is used, the project will be inferred from the account.|string||Yes|
|google_service_account_key_algorithm|The algorithm used to generate the key. KEY_ALG_RSA_2048 is the default algorithm. Valid values are listed at ServiceAccountPrivateKeyType (only used on create)|string|KEY_ALG_RSA_2048|No|
|google_service_account_key_public_key_type|The output format of the public key requested. X509_PEM is the default output format.|string|X509_PEM|No|
|google_service_account_key_private_key_type|The output format of the private key. TYPE_GOOGLE_CREDENTIALS_FILE is the default output format.|string|TYPE_GOOGLE_CREDENTIALS_FILE|No|
|google_project_id|The project ID. Changing this forces a new project to be created.|string|project-f2754a99|No|

## output parameters

| Name | Description | Type |
|------|-------------|:----:|
|name|The name used for this key pair.|string|
|public_key|The public key, base64 encoded.|string|
|private_key|The private key in JSON format, base64 encoded. This is what you normally get as a file when creating service account keys through the CLI or web console. This is only populated when creating a new key, and when no pgp_key is provided.|string|
|private_key_encrypted|The private key material, base 64 encoded and encrypted with the given pgp_key. This is only populated when creating a new key and pgp_key is supplied.|string|
|private_key_fingerprint|The MD5 public key fingerprint for the encrypted private key. This is only populated when creating a new key and pgp_key is supplied.|string|
|valid_after|The key can be used after this timestamp. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".|string|
|valid_before|The key can be used before this timestamp. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".|string|