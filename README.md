# kiwi_cmds
KIWI image building functions as command shortcuts

## Introduction

The functions included in the script in this repository are intended to be used as commands in a shell for building images with KIWI. The idea is to simplify the commands used to do this task, improving speed and reducing errors when executing them.

## How to use it

It is necessary to copy the script to your $HOME directory and rename it to something like *.kiwi_cmds.sh*. Then in *.bashrc* just `source .kiwi_cmds.sh`. For example:

```bash
$ cp kiwi_cmds.sh ~/.kiwi_cmds.sh
$ echo 'source .kiwi_cmds.sh' >> ~/.bashrc
```

## Available commands

This is not an exhaustive list of the commands available, but some of them shown as examples.

To build a 32 bit image with image source called *ncr1000-1.0.0*:

`$ kb32 ncr1000-1.0.0`

To prepare a 64 bit image:

`$ kp ncr1000-1.0.0`

To create a 64 bit image:

`kc ncr1000-1.0.0`

## Image source directory

The scripts assumes the image sources are located at `/var/lib/SLEPOS/system/`. If you wish to change this directory, you will have to edit the variable `BASE_BUILD_DIR` found at the top of the file.
