#!/usr/local/bin/bash

username=guest
hostname=localhost

echo -n "Password:"

stty -echo
read password

stty echo

echo ""
