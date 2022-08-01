---
title: "Gitting Started .. Git it?"
chapter: false
weight: 10
---

## Create a local file repository

First Things first, we will be creating a local file repository or "repo". This is fancy talk for creating a folder locally on your machine that will be used to store code and development projects. Storing code on your machine allows you to work on and make changes to your project before pushing your changes to a GitHub repository where the pipeline configuration resides. 


> It is best practice to not include spaces in the name of this folder, or files in general while developing. Instead consider naming files as: "ThisFile" or "This_File"

## Open this folder within VSCode

You can either right click within this folder and select “Open with code” or navigate to it from VSCode Directly

![image](/images/CXFolderNav.PNG)

## Create an OAuth Client
Generate a client credentials Oauth client in the Genesys Cloud admin panel.​

The roles tab is where you specify the permissions this client will have.
> it is best practice to limit the permissions of clients to only their required functions

![image](/images/CXAuthClient.PNG)

