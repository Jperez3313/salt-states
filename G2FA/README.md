## Google SSH 2FA Salt

- Salt stack for implementing google ssh 2FA using public keys and google authenticator application.

Steps: 
1. Apply the salt stack: salt-call state.apply google_auth
2. Check for successful setup.
3. If successful now you can run setup.sh
4. The setup.sh script will produce a secret key and a QR code, these can be used to add this machine to your google authenticator application.  These can be used for multiple users who need access to the account.
5. You may have to restart ssh after running the setup script. (systemctl restart sshd)
6. It may ask you if you want to enable rate limiting which will limit the amount of login attempts to 3 every 30 seconds, I suggets using this to prevent brute force attacks (y).


