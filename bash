#!/bin/bash

#creates new user
sudo dscl . -create /User/Mfreeman

#creates group
sudo dscl . create /Groups/NewGroup

#adds user to the group
sudo dscl . append /Groups/NewGroup GroupMembership $Mfreeman

#copies file
cp /Users/mecca/desktop/practice.txt .

#change file permissions
chmod 754 practice.txt

#rm file
rm practice.txt