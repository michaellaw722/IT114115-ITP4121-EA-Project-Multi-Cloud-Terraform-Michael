# ITP4121 Deploy and manage Multi Cloud Kubernetes with Terraform Michael

https://docs.google.com/document/d/1S1fq2jfLFNTI5JrM-oPzfB2yGtzPCi336fHIwpfQrZk/edit

### Setup

This is an example of how Login Google Cloud, AWS, and Azure
* GCP Login
  ```sh
  gcloud auth login
  ```
Open URL and copy the auth code

Set to use which project
  ```sh
  gcloud config set project <project id>
  ```


* AWS Login
  ```sh
  aws configure
  ```
Enter the aws_access_key, aws_secret_access_key, region, output format

Set aws_session_token if using edu account
  ```sh
  aws configure set aws_session_token <SESSIONTOKENHERE>
  ```

* Azure Login
Copy Auth Code to URL
  ```sh
  az login --use-device-code
  ```
To set use which subscription
  ```sh
  az account set --subscription 8130e691-6554-4046-a6a1-0e03085ef7fa
  ```
