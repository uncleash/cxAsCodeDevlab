---
title: "What is Terraform?"
chapter: false
weight: 30
---

## What is Terraform

Terraform is a cloud provisioning tool that was originally designed to provide a common language and framework for cloud-based providers like AWS, Azure and Google Cloud.

Terraform is the underlying tool for building and managing the resources and data sources that we reference in CX as Code. It takes in configuration files, which specify how the resources should be set up and configured. Terraform will generate an execution plan describing what needs to be done to reach the desired state. Terraform then applies the plan and builds the specified infrastructure. When new changes are made to the configuration files, Terraform is able to detect differences and generate incremental execution plans for changes.​

![image](/images/CXTerraform.PNG)

