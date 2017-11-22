set mbox_type=Maildir
set folder="~/Mail/redhat-gmail"
set spoolfile="=INBOX"
mailboxes `find ~/Mail/redhat-gmail -type d -name cur -printf '%h \0' |LC_COLLATE=C sort -z| xargs -0`
#mailboxes `find ~/Mail/ -type d -name cur -printf '%h '`
set record="=Sent"
set postponed="=Drafts"
set from=evgeni@redhat.com
alternates (egolov|evgeni|evgeni.golov)@redhat.com

set signature=~/.mutt/signature.redhat
set sendmail='/usr/sbin/sendmail -oem -oi -f evgeni@redhat.com'

