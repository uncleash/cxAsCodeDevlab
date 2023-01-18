---
title: "What is CX As Code?"
chapter: false
weight: 20
---

## What is CX as Code?

CX as Code is a configuration tool that allows you to define Genesys Cloud objects such as Queues, Skills, Users, etc. in plain text files and then apply that configuration across a single or multiple Genesys Cloud CX organizations.

Uses for CX as code could be:
- Provisioning of a Genesys CX organization's initial configurations
- Deployment of CX infrastructure accross multiple Genesys CX organizations
- Replication of core CX infrastructure to a Disaster Recovery (DR) Environment



![CXasCodeOverview](/images/CXasCodeOverview.jpg)


##

## CX as Code Resources

CX as Code Resources are used to **create** configuration components using inputs (such as the name of a skill, or a users name and email), however; some resources have numerous dependencies, or configuration objects that must exist or be created in tandem for the resource to be created.



> Below is an example of a resource with various inputs (name, description) and data source dependencies (queue_flow_id, whisper_prompt_id)

![image](/images/CXResource.PNG)

## CX as Code Data Sources

Data Sources are similar to GET Requests, allowing you to GET information that already exists on the platform to be referenced within resources by component name as shown below

> Below is an example of a data source, we are retrieving the welcome greeting by its name "Welcome_Greeting", this can be then referenced in the previous resource example to populate the whisper prompt for the queue

![image](/images/CXDataSource.PNG)

## Auth Access Requirements

Within resources on the terraform registry you will see a defined list of API access requirements for the Oauth client you've constructed which will outline the permissions your Oauth client requires to execute the specific resource you are reviewing

![image](/images/CXAuthReq.PNG)