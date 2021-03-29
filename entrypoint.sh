#!/bin/sh
mkdir /home/${EXTERNAL_USER}
chown ${EXTERNAL_UID} /home/${EXTERNAL_USER}
chmod 0700 /home/${EXTERNAL_USER}
