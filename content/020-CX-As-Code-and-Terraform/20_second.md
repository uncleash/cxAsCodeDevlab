---
title: "What is Terraform?"
chapter: false
weight: 20
---

## What is Terraform

Terraform is a tool for building and managing infrastructures. It takes in configuration files, which specify how the resources should be set up and configured. Terraform will generate an execution plan describing what needs to be done to reach the desired state. Terraform then applies the plan and builds the specified infrastructure. When new changes are made to the configuration files, Terraform is able to detect differences and generate incremental execution plans for changes.​

![image](/images/CXTerraform.PNG)

To get Started with Terraform, we will follow the link below to downloading it to your machine

For windows, you can follow the terraform download instrictions found on the terraform site [here](https://www.terraform.io/downloads)

For mac, you will need to move through the following steps

- Download [brew](https://brew.sh/) and following the download instructions to properly configure brew on your Mac
- once you have downloaded brew on your Mac OS, you may download terraform from the link provided above or paste the following commands into your command line

```
$ brew tap hashicorp/tap
$ brew install hashicorp/tap/terraform

```

Note that this download process can take a while, allow anywhere from 10-30 minutes for this download to take place


