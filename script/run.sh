#!/bin/bash
source /etc/prodenv/env
DATABASE_URL=$NOURISH_SQL_CONNECTION
pgweb --bind 0.0.0.0 --url $DATABASE_URL
