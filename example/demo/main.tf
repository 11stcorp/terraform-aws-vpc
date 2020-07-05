# terraform {
#     backend "remote" {
#         organization = "11st" # org name from step 2.
#         workspaces {
#             name = "terraform-aws-vpc" # name for your app's state.
#         }
#     }
# }


provider "aws" {
  region = "ap-northeast-2"
}


