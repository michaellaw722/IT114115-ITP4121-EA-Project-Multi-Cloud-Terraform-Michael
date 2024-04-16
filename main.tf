module "aws-tf" {
  source = "./AWS"
}

module "azure-tf" {
  source = "./Azure"
}

module "gcp-tf" {
  source = "./GCP"
}