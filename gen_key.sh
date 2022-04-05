#!/bin/bash

set -e

echo "Enter passcode and server IPv4:"

read pass ip

echo "ss://"`echo -n chacha20-ietf-poly1305:$pass@$ip:21 | base64`
