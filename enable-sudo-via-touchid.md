# Enable Touch ID for sudo

```
# In Terminal, go to /etc/pam.d/ and open the sudo file in a text editor
# (Make subl work. See: https://stackoverflow.com/a/17731879/5306470)

cd /etc/pam.d/; subl sudo;

# Add the following below the first line

auth sufficient pam_tid.so

# And save those changes.
```