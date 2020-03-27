# hostup
A simple host file based ad blocking script

This script uses Steven Blacks host file to block ads and trackers (https://github.com/StevenBlack/hosts)

It allows you to append the blacklist to an existing hosts file (in /etc/hosts) and update it with one command.

It also has options to backup the original host file and revert the host file back to stock.

# Installation (requires the program git)
cd Downloads

git clone https://github.com/copperly123/hostup.git

cd hostup

./install.sh

hostup -i

You can then delete the folder it creates in your downloads folder, but you will have to run the "git" command again in order to access the uninstall script

# Uninstallation
### If you deleted the folder the install creates in your Downloads folder then run these commands before the others. If not then skip this section.

cd Downloads

git clone https://github.com/copperly123/hostup.git

### Run these to uninstall
hostup -r

cd Downloads/hostup/

./uninstall.sh

rm -rf ~/Downloads/hostup/

# Usage

After the install process and a reboot you will start blocking ads/trackers

You should regularly run "hostup -u" to update the blacklist

### Commands

"hostup" - display help message outlining the commands below

"hostup -i" - Initial install to host file, does a backup of the file to ~/Downloads and appends the blacklist

"hostup -u" - Updates the host file with a new version of the blacklist.

"hostup -b" - Backs up the host file to ~/Downloads

"hostup -r" - Reverts the host file to stock, removing the blacklist
