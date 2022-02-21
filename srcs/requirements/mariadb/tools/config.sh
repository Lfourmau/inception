#!/bin/sh

service mysql restart
mysql < /scripts/wp_database.sql