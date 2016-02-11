# Version Control for the Social Sciences
This is the repository for the MSU SSDA Version Control Workshop. This README file provides useful information on how to use the file in the repository.

##How to install Git?

- Linux
    - In terminal: **sudo apt-get install git**
- OSX and Windows
    - go to https://desktop.github.com/ and download GitHub Desktop

After install, Open Terminal (Linux & OSX) or Git Shell (Windows) and type **which git** to see if everything is installed correctly.

## Configuring Git

We are going to configure Git for using remote repositories:
    **git config --global user.name “Your Name”**
    **git config --global user.email “Your E-mail Address”**

To check to see if everything is installed correctly, check the config file:
    **git config --global --edit**

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


## Cloning Repositories
Just as you can create your own repositories, you can also copy the repository from another user.

To copy or clone our example repository:
**git clone** https://github.com/wisaac/SSDA_Demo.git

For our example here, we need to change the location of the remote repo. You don't normally have to do this.
**git remote set-url origin** http://github.com/YOU/YOUR_REPO

Lastly, we want to confirm that the remote url has changed
**git remote -v**

##Making changes to your Repo


##Undo changes in your Repo


## Other Resources

Here are some other excellent guides for learning git

- https://www.atlassian.com/git/tutorials
- https://try.github.io/levels/1/challenges/1
- http://www.tutorialspoint.com/git/git_basic_concepts.htm 

Though we did not discuss this in the workshop. A very useful addition to the standard git package is the large file storage or lfs module. You can install it by going to the following link: https://git-lfs.github.com/ 


