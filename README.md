# SHELL SCRIPTS FOR LINUX

![GitHub repo size](https://img.shields.io/github/repo-size/F4NT0/SCRIPTS) ![GitHub last commit](https://img.shields.io/github/last-commit/F4NT0/SCRIPTS) ![GitHub top language](https://img.shields.io/github/languages/top/F4NT0/SCRIPTS?color=green)


* Repository with Scripts to help you out on Linux Distros

### How to use the Scripts

* To make the Scripts compile on your Linux Distro, you need to give permissions do the file

```bash
# GIVE READ PERMISSIONS TO A SHELL SCRIPT FILE
chmod +x script_name.sh
```

* To run a Script on your Linux Distro, run the following command:

```bash
# RUN FILE ON YOUR LINUX COMPUTER SHELL
./script_name.sh
```

### Creating a Shell Script

* To create a Shell Script on Shell CLI, download the **vim** package on your distro

```bash
sudo apt-get install vim
```

* Create an File with the **.sh** extension with VIM

```bash
vim script_name.sh
```

* Insert in the beggining the following commands on the file
  * To Start insertion on VIM, click on the **i** keyboard button

```shell
#!/bin/bash
```

* Put what commands do you want on the file after the last step

```shell
#!/bin/bash

# -------------------------------
# EXAMPLE OF A SHELL SCRIPT FILE
# -------------------------------

sudo apt-get install screenfetch
```

* make the file runnable like explained before and run the Script on your Linux Terminal/Shell CLI
