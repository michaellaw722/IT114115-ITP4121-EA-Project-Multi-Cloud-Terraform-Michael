provider "aws" {
    region = "ap-east-1"
}

provider "gcp" {
    project = "cloud-project"
    region = "asia-east2"
}

provider "azurerm" {
    features {}
}
