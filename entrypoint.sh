#!/bin/sh

# wait for postgres
while ! nc -z db 5432; do
    sleep 0.1
done

# proceed to docker command
exec "$@"