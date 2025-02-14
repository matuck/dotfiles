dotfiles
========

This repo is orginally based off of [How I manage my dotfiles using GNU Stow](https://dev.to/spacerockmedia/how-i-manage-my-dotfiles-using-gnu-stow-4l59).  There may be some adaptions over time.  I will do my best to keep the readme updated.

# Setup
To setup your dotfiles you will need to run the setup.sh script.  If the distribution has already been configured it will install any packages the script needs to run provided you tell the script its ok to install packages.  It will then install any packages needed for any specific dotfiles you tell it to install.  This is provided that in the __setup directory there is a file for each dotfile folder with a .<Distro> tag.


# Updates
After updating any files be sure to add and commit to the repository, so that the changes can be propagated to other systems.

You may need to rerun the setup.sh script from time to time to update any new information that may be created.
