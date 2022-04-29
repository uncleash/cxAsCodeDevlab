---
title: "Building Your Code Base"
chapter: false
weight: 20
---

## Setting up your file structure

Create two files in VS code: 1. main.tf and 2. variables.tf

In the main.tf file, copy and paste the following: 

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
In the variables.tf file, copy and paste the following except replace what's in parentheses with the information from your oAuth you created in the previous step. You also will need to replace the AWS region with the region that your account is in.

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

## Running the Terraform Commands

Open up a terminal in Visual Studio Code.

![](images/Intro_view.png) "need new image"

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
![](images/Intro_view.png) "need new image"

This will give you a break down of what will be created, modified, or destroyed by running terraform apply. 

If everything looks good with the plan, you can probably guess what we're going to run next: 
```
terraform apply
```
You will need to confirm that you indeed want to make the changes so say "yes". 

At this point, you should be able to go into the org and see that your changes have been made! Congrats, you've successfully created a skill using CX as Code.