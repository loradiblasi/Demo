# SSDA_Demo
This is the repo for the MSU SSDA Version Control Workshop. This README file provides useful information on how to use the file in the repository.

##How to install Git?

- Linux
    - In terminal: sudo apt-get install git
- OSX and Windows
    - go to https://desktop.github.com/ and download GitHub Desktop

After install, Open Terminal (Linux & OSX) or Git Shell (Windows) and type **which git** to see if everything is installed correctly.

## Configuring Git

We are going to configure Git for using remote repositories:
    git config --global user.name “Your Name”
    git config --global user.email “Your E-mail Address”

To check to see if everything is installed correctly, check the config file:
    git config --global --edit

The config file has many features that you can edit. Here is an example:
```
# This is Git's per-user configuration file.
[user]
# Please adapt and uncomment the following lines:
    name = John Doe
    email = jdoe@gmail.com
[alias]
    st = status
    co = checkout
    br = branch
    up = rebase
    ci = commit
[core]
    #You can set this to any text editor you want!
    editor = subl
```

Check out the following links to get more info on the config files:

https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup