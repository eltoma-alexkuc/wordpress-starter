#!/usr/bin/expect -f

set timeout -1
spawn sendmailconfig
expect "Configure sendmail with the existing /etc/mail/sendmail.conf?"
send -- "y\r"
expect "Configure sendmail with the existing /etc/mail/sendmail.mc?"
send -- "y\r"
expect "Reload the running sendmail now with the new configuration?"
send -- "y\r"
expect eof
