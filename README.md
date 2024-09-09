dotfiles
========

This repo is orginally based off of [How I manage my dotfiles using GNU Stow](https://dev.to/spacerockmedia/how-i-manage-my-dotfiles-using-gnu-stow-4l59).  There may be some adaptions over time.  I will do my best to keep the readme updated.

# Setup
To setup your dotfiles you will need to run 2 scripts on your first setup.  

##  __setup/<distribution>.sh
Distribution will be the distribution of that system.  If this script does not exist you, may need to create it based on the other scripts.  This will install any neccessary packages.
## setup.sh
This script will actualy create the links in your home directory.

# Updates
After updating any files be sure to add and commit to the repository, so that the changes can be propegated to other systems.

You may need to rerun the setup.sh script from time to time to update any new information that may be created.
