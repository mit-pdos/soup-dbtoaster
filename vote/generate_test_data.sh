#!/bin/bash
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "==> generating 100k articles..."
rm "${dir}/art.csv"
for i in $(seq 0 99999); do echo "$i,\"Article #$i\"" >> "${dir}/art.csv"; done

echo "==> generating 50M votes, this can take a moment..."
rm "${dir}/vt.csv" "${dir}/vt-ord.csv"
for j in $(seq 500); do
	echo "  -> $j/500"
	for i in $(seq 0 99999); do echo "0,$i" >> "${dir}/vt-ord.csv";
	done;
done
shuf -o "${dir}/vt.csv" "${dir}/vt-ord.csv"
