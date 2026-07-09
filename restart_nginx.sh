#!/bin/bash

echo "Restarting Nginx..."

sudo systemctl restart nginx

echo "Checking Nginx Status..."

sudo systemctl status nginx --no-pager
