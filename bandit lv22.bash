cd /etc/cron.d
cat cronjob_bandit22
# @reboot bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null    # &> /dev/null will suppress all output because cron runs in the background
# * * * * * bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null  # 5 * symbols mean the process runs every minute every day
cat /usr/bin/cronjob_bandit22.sh # To look what the file does
# #!/bin/bash
# chmod 644 /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
# cat /etc/bandit_pass/bandit22 > /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
# This create a "tmp" file then gives read permission to everyone, then copy pw of bandit22 to the file
cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv # Solution
