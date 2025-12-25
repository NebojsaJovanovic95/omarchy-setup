#!/usr/bin/env bash

KEY="Down"


for i in $(seq 1 5); do
    wtype -k $KEY
    sleep 0.05   # adjust speed
done

