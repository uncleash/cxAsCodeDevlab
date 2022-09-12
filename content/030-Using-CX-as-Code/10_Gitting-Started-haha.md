---
title: "Gitting Started .. Git it?"
chapter: false
weight: 10
---

## Create a local file repository

First things first, we will be creating a local file repository or "repo". This is fancy talk for creating a folder locally on your machine that will be used to store code and development projects. Storing code on your machine allows you to work on and make changes to your project before pushing your changes to a GitHub repository where the pipeline configuration resides. 


> It is best practice to not include spaces in the name of this folder, or files in general while developing. Instead consider naming files as: "ThisFile" or "This_File"

## Open this folder within VSCode

For both Mac and PC You select “Open with code” or navigate to it from VSCode directly to open your project folder.

![image](/images/VS_openfolder.png)

## Create an OAuth Client

Within Genesys Cloud Navigate to Admin > OAuth

Generate a client credentials Oauth client in the Genesys Cloud admin panel.​

The roles tab is where you specify the permissions this client will have.
> it is best practice to limit the permissions of clients to only their required functions to limit security vulnerabilities.

![image](/images/CXAuthClient.PNG)

