set mbox_type=Maildir
set folder="~/Mail/redhat"
set spoolfile="=INBOX"
mailboxes `find ~/Mail/redhat -type d -name cur -printf '%h \0' |LC_COLLATE=C sort -z| xargs -0`
#mailboxes `find ~/Mail/ -type d -name cur -printf '%h '`
set record="=Sent"
set postponed="=Drafts"
set from=egolov@redhat.com
alternates (egolov|evgeni|evgeni.golov)@redhat.com

set signature=~/.mutt/signature.redhat

