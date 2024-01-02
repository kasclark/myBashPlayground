#!/bin/bash

# USAGE: ./checkHeaders.sh target

xframe=$(curl -s -v $1 | grep 'X-Frame-Options')
if [ -z "$xframe" ] 
then
	echo "[FAIL] X-Frame-Options not set!"
else
	echo "[PASS] X-Frame-Options set to: $xframe"
fi

securitypolicy=$(curl -s -v $1 | grep 'Security-Policy')
if [ -z "$securitypolicy" ]
then
	echo "[FAIL] Content-Security-Policy not set!"
else
	echo "[PASS] Content-Security-Poilcy set to: $securitypolicy"
fi
