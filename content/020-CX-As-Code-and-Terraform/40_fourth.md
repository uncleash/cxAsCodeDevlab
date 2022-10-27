---
title: "Pre-Requisites and Configuration Review"
chapter: false
weight: 40
---

## What You Will Need Getting Started

Before getting hands on with CX as code, there are resources and prerequisites we will need to take care of first. Below you will find the resources available, varying depending on the OS you are currently utilizing. 

# Windows

### Visual Studio Code

You may download VS Code directly -->  **[here](https://code.visualstudio.com/download)**

### GitHub and GIT

To Start we will need to create a Github Account. If you already have a github account and SSH key generated, you may skip this step. If you do not have a Github Account, please follow the following steps:

Creating an account
To sign up for an account on GitHub.com, navigate to **[Github.com](https://github.com/)** and follow the prompts.

Install Git on Windows:

- Navigate to the latest Git for Windows installer and download the latest version found --> **[here](https://gitforwindows.org/)**
- Once the installer has started, follow the instructions as provided in the Git Setup wizard screen until the installation is complete.
- open the windows command prompt (or Git Bash if you selected not to use the standard Git Windows Command Prompt during the Git installation).
- Type git version to verify Git was installed.

Note: git-scm is a popular and recommended resource for downloading Git for Windows. The advantage of downloading Git from git-scm is that your download automatically starts with the latest version of Git included with the recommended command prompt, Git Bash . The download source is the same Git for Windows installer as referenced in the steps above.

##### Generating a new SSH key and adding it to the ssh-agent

Documentation on this set can be found **[here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)**

There are two primary methods of cloning from Github, SSH and HTTPS which each require configuration

Connecting over SSH:

- **[Cloning with SSH urls](https://docs.github.com/en/github/getting-started-with-github/about-remote-repositories/#cloning-with-ssh-urls)**
- **[Generating a new SSH Key](https://docs.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)**

And 

Connecting over HTTPS:

- **[Cloning with SSH urls](https://docs.github.com/en/github/getting-started-with-github/about-remote-repositories/#cloning-with-https-urls)**
- **[Caching yout GitHub Credentials in Git](https://docs.github.com/en/github/getting-started-with-github/caching-your-github-credentials-in-git)**


### Terraform

To get Started with Terraform, we will follow the link below to downloading it to your machine

For windows, you can follow the terraform download instrictions found on the terraform site **[here](https://www.terraform.io/downloads)**


Note that this download process can take a while, allow anywhere from 10-30 minutes for this download to take place

# MAC OS

### Visual Studio Code

You may download VS Code directly -->  **[here](https://code.visualstudio.com/download)**

You will need to install the terraform extension within VS Code by navigating to extensions on the left pane, searching "HashiCorp Terraform" and installing the extension displayed below.

![image](/images/tfextension.PNG)

### GitHub and GIT

##### GitHub:

Creating an account
To sign up for an account on GitHub.com, navigate to **[Github.com](https://github.com/)** and follow the prompts.

##### GIT
Most versions of MacOS will already have Git installed, and you can activate it through the terminal with git version. However, if you don't have Git installed for whatever reason, you can install the latest version of Git using one of several popular methods as listed below:

- Navigate to the latest macOS Git Installer and download the latest version found **[here](https://sourceforge.net/projects/git-osx-installer/files/git-2.23.0-intel-universal-mavericks.dmg/download?use_mirror=autoselect)**
- Once the installer has started, follow the instructions as provided until the installation is complete.
- Open the command prompt "terminal" and type git version to verify Git was installed.


#### or
Install Git from Homebrew: 
Homebrew is a popular package manager for macOS. If you already have Homwbrew installed, you can follow the below steps to install Git:

For mac, you will need to move through the following steps

- Download **[brew](https://brew.sh/)** and following the download instructions to properly configure brew on your Mac
- once you have downloaded brew on your Mac OS, you may download terraform from the link provided above or paste the following commands into your command line

Open up a terminal window and install Git using the following command: 

```
brew install git
```

Once the command output has completed, you can verify the installation by typing: 

```
git version.
```

##### Generating a new SSH key and adding it to the ssh-agent

Documentation on this set can be found **[here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)**

There are two primary methods of cloning from Github, SSH and HTTPS which each require configuration

Connecting over SSH:

- **[Cloning with SSH urls](https://docs.github.com/en/github/getting-started-with-github/about-remote-repositories/#cloning-with-ssh-urls)**
- **[Generating a new SSH Key](https://docs.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)**

And 

Connecting over HTTPS:

- **[Cloning with HTTPS urls](https://docs.github.com/en/github/getting-started-with-github/about-remote-repositories/#cloning-with-https-urls)**
- **[Caching yout GitHub Credentials in Git](https://docs.github.com/en/github/getting-started-with-github/caching-your-github-credentials-in-git)**

### Terraform

For mac, you will need to move through the following steps

- Download **[brew](https://brew.sh/)** and following the download instructions to properly configure brew on your Mac
- once you have downloaded brew on your Mac OS, you may download terraform from the link provided above or paste the following commands into your command line

```
 brew tap hashicorp/tap
 brew install hashicorp/tap/terraform

```
