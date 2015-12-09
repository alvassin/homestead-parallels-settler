#!/usr/bin/env bash

# Install required vagrant plugin to handle reloads during provisioning
vagrant plugin install vagrant-reload

# Start with no machines
vagrant destroy -f
rm -rf .vagrant

# Remove previosly built box, if exists
rm -f homestead.box

# Create VM & provision
time vagrant up --provider parallels 2>&1 | tee build-output.log

# Shutdown VM
vagrant halt

# Retrieve parallels home, substr & trim
PARALLELS_PATH=`prlsrvctl info | grep 'VM home' | cut -d':' -f2 | xargs`

# Retrieve VM file name
VM_FILENAME=`ls ${PARALLELS_PATH} | grep settler`

# Pack box
vagrant package --output homestead.box

# Calculate box size
ls -lh homestead.box

# Cleanup
vagrant destroy -f
rm -rf .vagrant