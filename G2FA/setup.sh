#!/bin/bash

#Install and automate google-authenticator information.
google-authenticator -t -d -f -w 3

# -t setup time based (TOTP) verification.
# -d disallow re-use of previously used tokens.
# -f Write file without first confirming with user
# -w Set window of concurrently valid codes

#Restart sshd service
sudo systemctl restart sshd 

echo "Google Authenticator setup completed, and SSH service has been restarted."


