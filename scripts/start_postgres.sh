#!/usr/bin/env bash
chown -R root:postgres /etc/wal-e.d
chmod -R 750           /etc/wal-e.d
exec su postgres -c "/usr/lib/postgresql/9.3/bin/postgres -D /var/lib/postgresql/9.3/main -c config_file=/etc/postgresql/9.3/main/postgresql.conf"
