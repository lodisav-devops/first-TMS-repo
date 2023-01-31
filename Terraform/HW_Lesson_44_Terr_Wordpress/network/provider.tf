provider "aws" {
  shared_config_files = [ "/mnt/c/Users/Admin/.aws/config" ]
  shared_credentials_files = [ "/mnt/c/Users/Admin/.aws/credentials" ]
  default_tags {
    tags = merge(var.tags, {Environment="${terraform.workspace}"})
  }
}
