#!/bin/bash

mkdir -p /usr/local/src/chat/.well-known
HMETA_FILE="/usr/local/src/chat/.well-known/host-meta"
HMETA_JSON_FILE="/usr/local/src/chat/.well-known/host-meta.json"

# mkdir -p ./static/.well-known
# HMETA_FILE="./static/.well-known/host-meta"
# HMETA_JSON_FILE="./static/.well-known/host-meta.json"

#### HMETA_FILE GENERATED
printf "<?xml version='1.0' encoding='utf-8'?>\n" > $HMETA_FILE
printf "<XRD xmlns='http://docs.oasis-open.org/ns/xri/xrd-1.0'>\n" >> $HMETA_FILE
printf "\t<Link rel=\"urn:xmpp:alt-connections:websocket\" href=\"wss://$NGINX_HOST/chat/ws\" />\n" >> $HMETA_FILE
printf "</XRD>" >> $HMETA_FILE

#### HMETA__JSON_FILE GENERATED
printf "{
  \n\t\"links\": [
    \n\t\t{
      \n\t\t\t\"rel\": \"urn:xmpp:alt-connections:websocket\",
      \n\t\t\t\"href\": \"wss://$NGINX_HOST/chat/ws\"
    \n\t\t}
  \n\t]
\n}" > $HMETA_JSON_FILE

