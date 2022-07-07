---
title: "Building Your Code Base"
chapter: false
weight: 20
---

## Setting up your file structure

From here, we will be starting from scratch with two terraform scripts and how to get started with terraform. Below you will see two separate terraform files you will need to create. Within VS Code, create new folders with the naming convention below:

Create two files in VS code: 
1. Variables.tf
2. Main.tf

Copy the code snippit below and paste it into your Variables.tf file. Once copied over you will need to enter your Oauth client ID and secret with the information from the Oauth client you created in the previous step. You will also need to replace the [AWS Region](https://help.mypurecloud.com/articles/aws-regions-for-genesys-cloud-deployment/) (found in the AWS region name column in the linked article) with the AWS region your Genesys Cloud org resides in

```
variable "oauthclient_id" {
  default = "OAUTH ID HERE"
}
variable "oauthclient_secret" {
  default = "OAUTH SECRET HERE"
}

variable "aws_region" {
  default = "MY AWS REGION"
}
```

Copy the code snippit below and paste it into your Main.tf file. This code snip contains your Oauth reference, providers and a resource to construct a routing skill

```
terraform {
  required_version = "~> 1.1.6"
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud"
      version = "~> 1.0.0"
    }
  }
}

provider "genesyscloud" {
  oauthclient_id = var.oauthclient_id
  oauthclient_secret = var.oauthclient_secret
  aws_region = var.aws_region
}

resource "genesyscloud_routing_skill" "test_skill" {
  name = "Test Skill"
}

```
## Running the Terraform Commands

Open up a terminal in Visual Studio Code.

![sdsd](/images/CXTerminal.PNG)
In your terminal, you will run a series of three terraform commands. 

The first that you will need to run is: 
```
terraform init
```
This should initialize terraform in your local repository allowing you to execute terraform commands. 

The next command you will run is: 
```
terraform plan
```
![image](/images/CXTFPlan.PNG)

This will give you a break down of what will be created, modified, or destroyed by running terraform apply. 

If everything looks good with the plan, you can probably guess what we're going to run next: 
```
terraform apply
```
You will need to confirm that you indeed want to make the changes so say "yes". 

![image](/images/CXTFApply.PNG)

At this point, you should be able to go into the org and see that your changes have been made! Congrats, you've successfully created a skill using CX as Code.