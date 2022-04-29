---
title: "CX As Code"
chapter: false
weight: 20
---

## What is CX as Code?

CX as Code is a configuration tool that allows you to define Genesys Cloud Objects such as Queues Skills, Users, etc. in plain text files and then apply that configuration accross multiple Genesys CX organizations

![Image](/content/images/CXasCodeOverview.png)


##

## CX as Code Resources

CX as Code resources are used to create configuration components using various Imput fields such as name and description as well as data sources (such as division_ID or Queue_Flow_ID) 

![Image](/content/images/CXResource.PNG)

## CX as Code Data Sources

Data Sources are simelar to GET Requests, allowing you to GET refrencable information that exists on the platform to be refrenced within resources by component name as shown below

- In the data source below (see image), we are retrieving the welcome greeting by its name "Welcome_Greeting", this can be then refrenced in the previous resource example to populate the whisper prompt for the queue

![Image](/content/images/CXDataSource.PNG)


## Auth Access Requirements

Within resources you will see a defined list of API access requirements for the auth client you've constructted which will outline the permissions your auth client requires to execute the sepcific resource you are reviewing

![Image](/content/images/CXAuthReq.PNG)
