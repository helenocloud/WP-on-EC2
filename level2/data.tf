data "terraform_remote_state" "level1" {
  backend = "s3"

  config = {
    bucket = "tf-remote-state-8805-virginia"
    key    = "level1.tfstate"
    region = "us-east-1"
  }
}
