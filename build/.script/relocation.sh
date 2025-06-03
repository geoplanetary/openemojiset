#! /bin/bash

while read -rd $'\0' pattern; do
	mv "$(jq -r '.source' <<<"$pattern")" "$(jq -r '.destination' <<<"$pattern")"
done < <(jq --raw-output0 '.[]|tojson')
