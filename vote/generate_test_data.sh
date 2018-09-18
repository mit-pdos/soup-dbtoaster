#!/bin/bash
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "==> generating 500k articles..."
rm "${dir}/art.csv"
for i in $(seq 0 499999); do echo "$i,\"Article #$i\"" >> "${dir}/art.csv"; done

echo "==> generating 50M votes, this can take a moment..."
rm "${dir}/vt.csv" "${dir}/vt-ord.csv"
for i in $(seq 0 499999); do echo "0,$i" >> "${dir}/vt-tmp.csv";
done;

for j in $(seq 100); do
	echo "  -> $j/100"
	cat "${dir}/vt-tmp.csv" >> "${dir}/vt-ord.csv";
done
rm "${dir}/vt-tmp.csv"

shuf -o "${dir}/vt.csv" "${dir}/vt-ord.csv"
rm "${dir}/vt-ord.csv"
