#!/usr/bin/env bash

jupyter nbconvert notebooks/*.ipynb --to markdown --output-dir build

for svg in $(echo "build/**/*.svg")
do
	pdf="${svg%.*}.pdf"
	echo "$svg - > $pdf"
	rsvg-convert -f pdf -o "${pdf}" "${svg}"
done
