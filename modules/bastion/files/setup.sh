#!/usr/bin/env bash

# Log everything we do.
set -x
exec > /var/log/user-data.log 2>&1

runuser -l ec2-user -c "curl -sL toast.sh/tools | bash"
runuser -l ec2-user -c "ssh-keygen -q -f ~/.ssh/id_rsa -N ''"
