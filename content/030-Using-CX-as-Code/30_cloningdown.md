---
title: "Cloning down a Repository"
chapter: false
weight: 30
---

## Clone Your Repository

Here, we will walk through how to clone your Terraform repository from the provided GitHub repo [here](https://github.com/MyPureCloud/terraform-provider-genesyscloud)

To start, there are two ways to clone down your repository. The first is to fork the repository and the second is to clone the repository directly. Here, we reccomend forking the repository first, then cloning it down to your machine within VS Code.

You will notice within Github, there a button to fork the repository to your github account on the top right side:

![image](/images/GitHubFork.png)

Once you have selected fork, you will be brought to a page where you can select where you would like your repository to reside within GitHub and create your forked repository

![image](/images/CreateFork.png)

Great Job! You've now forked the repository. Now its time to clone it to your local machine to start working with the resources provided. Before doing so, ensure you have your file open within GITHub and have properly configured your machine for use with GIThub, terraform, and VScode. Once you're ready, we start by copying the HTTPS link found under the code button in GitHub as shown below:

![image](/images/GitCloneFork.png)

Now, we go to VS code where you have opened the file your repo will live within your local machine. Within VS Code, we open a new terminal to run the command "GIT Clone" to pull the repository to your local machine as seen below:

![image](/images/VSTerminal.png)

With the terminal now open we will run the following command:

![image](/images/GITclonecommand.png)

> **And there you go! You have now successfully cloned down a repository to your local machine to start working on your first terraform scripts. In the next module, we will work through some example terraform scripts getting started with the basics of creating your pipeline of code for configuring your Genesys CX deployments** 
