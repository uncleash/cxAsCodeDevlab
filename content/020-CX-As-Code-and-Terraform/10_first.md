---
title: "CX As Code"
chapter: false
weight: 10
---

## What is CX as Code?

CX as Code is a configuration tool that allows you to define Genesys CLoud Objects such as Queuesm Skills, Users, etc. in plain text files and then apply that configuration accross multiple Genesys CX organizations

![](images/Intro_view.png) "title of image"


##

## CX as Code Resources

CX as Code resources are used to create configuration components using various Imput fields such as name and description as well as data sources (such as division_ID or Queue_Flow_ID) 

*image slide 5*

## CX as Code Data Sources

Data Sources are simelar to GET Requests, allowing you to GET refrencable information that exists on the platform to be refrenced within resources by component name as shown below

- In the data source below (see image), we are retrieving the welcome greeting by its name "Welcome_Greeting", this can be then refrenced in the previous resource example to populate the whisper prompt for the queue

*image slide 6*


## Auth Access Requirements

Within resources you will see a defined list of API access requirements for the auth client you've constructted which will outline the permissions your auth client requires to execute the sepcific resource you are reviewing

*image slide 7*


## What is Terraform

Terraform is a tool for building and managing infrastructures. It takes in configuration files, which specify how the resources should be set up and configured. Terraform will generate an execution plan describing what needs to be done to reach the desired state. Terraform then applies the plan and builds the specified infrastructure. When new changes are made to the configuration files, Terraform is able to detect differences and generate incremental execution plans for changes.​

*image slide 8*
