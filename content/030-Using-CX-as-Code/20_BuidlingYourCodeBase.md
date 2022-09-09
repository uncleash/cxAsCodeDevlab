---
title: "Building Your Code Base"
chapter: false
weight: 20
---

## The Terraform Registry

The code snips we will be referencing for our configuration below can be found at the Genesys Cloud Terraform Registry.

Before we begin our code setup, we will take a brief walk through of the terraform registry which can be found **[Here](https://registry.terraform.io/providers/MyPureCloud/genesyscloud/latest/docs).**


## Setting up your file structure

From here, we will be starting from scratch with two terraform scripts and how to get started with terraform. Below you will see two separate terraform files you will need to create.

Within VS Code create the following two files (you can right click within your explorer or select file and "create file"): 
1. Variables.tf
2. Main.tf

Copy the code snippit below and paste it into your Variables.tf file. Once copied over you will need to enter your Oauth client ID and secret with the information from the Oauth client you created in Genesys Cloud. 

You will also need to replace the **[AWS Region](https://help.mypurecloud.com/articles/aws-regions-for-genesys-cloud-deployment/)** (found in the **AWS region name** column in the linked article) with the AWS region your Genesys Cloud org resides in. You can determine your AWS region by referencing the URL you use to access your org (Example: if you login to your org at https://login.usw2.pure.cloud/, you will input us-west-2 in the AWS Region Name field below)

```
variable "oauthclient_id" {
  default = "OAUTH ID HERE"
}
variable "oauthclient_secret" {
  default = "OAUTH SECRET HERE"
}

variable "aws_region" {
  default = "AWS Region Name"
}
```


**> Depending on when you downloaded terraform, you may have a different version than the "required_version = "~> 1.2.6" listed below. If you receive a version error such as "Unsupported Terraform Core Version" you can run "Terraform Version" (displayed below) and update the code to your current version.**

![image](/images/tfversion.PNG)

Copy the code snippit below and paste it into your Main.tf file. This code snip contains your Oauth reference, terraform providers and a resource to construct a routing skill.

> note: Run the following command to find your terraform version and edit the "required version" field 

```
terraform version
```


```
terraform {
  required_version = "~> 1.2.6"
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

Now that we have configured a single object, we can move forward to more complex object creation involving dependencies. We will be adding a user to home division with the the skill we have already created. 

Below is a user constructional resource, many of the optional configuration components have been removed. We will copy this code snip and paste it within the main.tf file underneath the skill resource we created as your initial configuration. 

```
resource "genesyscloud_user" "test_user" {
  email           = "workshopuser00@genesystest.com"
  name            = "Workshop User 00"
  password        = "123Password!"
  state           = "inactive"
  acd_auto_answer = true
  division_id     = genesyscloud_auth_division.terraform.id
  routing_skills {
    skill_id    = genesyscloud_routing_skill.test_skill.id
    proficiency = 4.5
  }
  routing_utilization {
    call {
      maximum_capacity = 1
      include_non_acd  = true
    }
    callback {
      maximum_capacity          = 2
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
    }
    chat {
      maximum_capacity          = 3
      include_non_acd           = false
      interruptible_media_types = ["call"]
    }
    email {
      maximum_capacity          = 2
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
    }
    video {
      maximum_capacity          = 1
      include_non_acd           = false
      interruptible_media_types = ["call"]
    }
    message {
      maximum_capacity          = 4
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
    }
  }
}

```

Now, we can save and apply your terraform script and execute the change.

We will notice an error occur as shown below:

![image](/images/terraformerror.png)

The error tells us that we need to use a data source within the script identifying the division this plan is applying to. We will navigate **[here](https://registry.terraform.io/providers/MyPureCloud/genesyscloud/latest/docs/data-sources/auth_division)** to find that data source.



Now we will copy and paste the division data source in order for our script to properly run.

>Note we have modified the Variable name to terraform to match our user resource, and we are searching for the "Home" Division by its name.

```
data "genesyscloud_auth_division" "terraform" {
  name = "home"
}
```
Now we apply our terraform plan again and you may notice another error, how are we going to fix it?