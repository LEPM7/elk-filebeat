#! /bin/sh
rm -r /var/lib/filebeat/registry
rm /var/lib/filebeat/meta.json
service filebeat restart
echo ***** Filebeat cache files removed and restarted successfully *****
