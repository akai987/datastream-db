#!/bin/bash
echo "Waiting for PostgreSQL to start..."
until pg_isready -U postgres; do
    sleep 2
done
echo "PostgreSQL is ready. Restoring database..."
pg_restore -U postgres -d cogesaf_old_db "/home/pg_convergence.tar"