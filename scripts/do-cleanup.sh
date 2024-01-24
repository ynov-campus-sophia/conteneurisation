#!/bin/bash
for i in $(doctl apps list --format "ID" | tail -n +2)
do
	echo "deleting app $i"
	doctl apps delete "$i" -f
done

