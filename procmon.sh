#!/bin/bash
old=$(ps -eo command)

while true; do
	new=$(ps -eo command)
	diff <(echo "$old") <(echo "$new") | grep [\<\>]
	sleep 1
	old=$new
done
