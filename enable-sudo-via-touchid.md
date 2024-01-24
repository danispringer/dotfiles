# Enable Touch ID for sudo

1. Type in Terminal:
    cd /etc/pam.d/
2. Open the **sudo** file in a text editor
3. Add the following below the first line
    auth sufficient pam_tid.so