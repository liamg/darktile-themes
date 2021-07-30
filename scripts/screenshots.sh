#!/usr/bin/env bash

mkdir -p screenshots

sed '/<!--screenshots-->/q' README.md > /tmp/readme

for theme in ./themes/*.yaml; do
	name=$(basename "${theme}" | sed 's/\.yaml//')
	image="$name.png"
	darktile -s /bin/bash -c "clear && sleep 0.3 && echo && echo -e ' Theme: \x1b[34m${name}\x1b[0m' && echo && ./scripts/demo.sh && sleep 0.3 && exit" --screenshot-after-ms 500 --screenshot-filename "./screenshots/${image}" --theme-path "${theme}"
	echo -e "### ${name}\n\n![${name}](./screenshots/${image})\n\n" >> /tmp/readme
done

mv /tmp/readme ./README.md
