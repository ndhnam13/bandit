cat /usr/bin/cronjob_bandit23.sh 
# #!/bin/bash

# myname=$(whoami)
# mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)

# echo "Copying passwordfile /etc/bandit_pass/$myname to /tmp/$mytarget"

# cat /etc/bandit_pass/$myname > /tmp/$mytarget

# This time the bash file takes variable from the user if we run cronjob_bandit23.sh rn it would only copy the pw of bandit22
# To get it to copy bandit23 pw we could change "$myname" to bandit23

echo I am user bandit23 | md5sum | cut -d ' ' -f 1
# 8ca319486bfbbc3663ea0fbe81326349
cat /tmp/8ca319486bfbbc3663ea0fbe81326349 #Sol
