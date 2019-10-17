#!/bin/sh

export DOCKER_BUILDKIT=1

docker run --rm $(docker build -f Dockerfile -q .) sh -c "exec /opt/SimplicityStudio_v4/studio \
	-application org.eclipse.equinox.p2.director \
	-consolelog \
	-r \${SILABS_REPOSITORY} \
	$@"
