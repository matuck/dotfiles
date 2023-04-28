dotFiles
========

This is the repo I will use to setup dotfiles accross my machines.  It uses
ansible to apply this configuration accross multiple machines

## Settings
This repo will come with default settings to apply everything.  If you want
to setup the box and skip a few things you can copy settingsoverride.template
to settingsoverride.yml  You can then override any settings in the system.

## Running
Run with the below command. You can specify a different inventory if you would
like but you will need to setup some settings files.
```bash
ansible-playbook -i inventory main.yml
```
