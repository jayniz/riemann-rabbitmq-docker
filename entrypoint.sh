#!/bin/bash
if [ -e "/docker-hostname" ]; then
  eventhost=$(cat /docker-hostname)
else
  eventhost=${EVENT_HOST:=$(hostname)}
fi
cmd="riemann-rabbitmq --event-host=${eventhost} ${@}"
echo "running: ${cmd}"
exec ${cmd}
