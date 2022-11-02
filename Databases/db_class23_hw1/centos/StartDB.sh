#!/bin/bash
su -l postgres -c /usr/pgsql-14/bin/initdb
su -l postgres -c "/usr/pgsql-14/bin/pg_ctl -D /var/lib/pgsql/14/data -l /tmp/pg_logfile start"
