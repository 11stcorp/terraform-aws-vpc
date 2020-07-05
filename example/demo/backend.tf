# terraform {
#     backend "remote" {
#         organization = "11st" # org name from step 2.
#         workspaces {
#             name = "terraform-aws-vpc" # name for your app's state.
#         }
#     }
# }

terraform {
  backend "s3" {
    region         = "ap-northeast-2"
    bucket         = "terraform-11st-demo-state"
    key            = "vpc-demo.tfstate"
    # dynamodb_table = "for locking"
    encrypt        = true
  }
  required_version = ">= 0.12"
}
