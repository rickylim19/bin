#!/bin/sh
#
# clean_docker.sh
# Copyright (C) 2015 ril-local <ril-local@nlfij-s2699>
#
# Distributed under terms of the MIT license.
#

imgs=$(docker images | awk '/<none>/ { print $3 }')

if [ "${imgs}" != "" ]; then
	echo docker rmi ${imgs}
	docker rmi ${imgs}
else
	echo "No docker images to remove"
fi

procs=$(docker ps -a -q --no-trunc)
if [ "${procs}" != "" ]; then
	echo docker rm ${procs}
	docker rm ${procs}
else
	echo "No processes to purge"
fi
