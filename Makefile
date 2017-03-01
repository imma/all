all:
	jq -s 'reduce .[] as $$e ({}; . * $$e)' > compose.json.1
	mv compose.json.1 compose.json

include ../base/Makefile.docker
