# Enable Touch ID for sudo
# First, open up Terminal. Navigate to the directory where the system stores the list of PAMs by typing
# cd /etc/pam.d/
# and open the sudo file there in your favorite command-line text editor. (You can also always use a
# GUI editor like BBEdit too.) Note that if you open it via the command-line, you’ll need to use sudo
# itself to do so, since the file is (understandably) protected.

# Once you’ve opened it, add the following below the first line (you’ll see the headers under which
# each of the entries goes):

# auth sufficient pam_tid.so

# That line basically tells the sudo command that the Touch ID authentication module is sufficient
# to authorize the user, which is all you need to do.