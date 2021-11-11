#!/bin/bash
restic -r /srv/restic-repo backup / --password-file /path/restic_passwd --exclude-file /path/exclude.dir
chown -R marco:marco /srv/restic-repo
restic forget --keep-daily 4 --prune
