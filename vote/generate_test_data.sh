#!/bin/bash

echo "generating 100k articles..."
for i in $(seq 0 99999); do echo "$i,\"Article #$i\"" >> art.csv; done

echo "generating 50M votes, this can take a moment..."
for j in $(seq 500); do for i in $(seq 0 99999); do echo "0,$i" >> vt.csv; done; done
