#!/bin/sh
service mysql start && mysql < /scripts/wp_database.sql
tail -f