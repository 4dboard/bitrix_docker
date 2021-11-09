#!/bin/bash
set -e

chown -R ftpuser:www-data /home/darbit && \
chmod 2775 /home/darbit && \
chmod -R o+r /home/darbit > /dev/null 2>&1 && \
chmod -R g+w /home/darbit > /dev/null 2>&1 && \
find /home/darbit -type d -exec chmod 2775 {} + > /dev/null 2>&1 && \
find /home/darbit -type f -exec chmod 0664 {} + > /dev/null 2>&1