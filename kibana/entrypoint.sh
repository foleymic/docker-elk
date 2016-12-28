#!/usr/bin/env bash

# Change kibana pink color to white
echo "Change color..."
sed -i 's/\@kibanaPink1:                           #E8488B;/\@kibanaPink1:                           \@white;/' /usr/share/kibana/src/ui/public/styles/variables/colors.less

# Wait for the Elasticsearch container to be ready before starting Kibana.
echo "Stalling for Elasticsearch"
while true; do
    nc -q 1 elasticsearch 9200 2>/dev/null && break
done

echo "Starting Kibana"
exec kibana
