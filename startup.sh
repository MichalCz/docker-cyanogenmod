#!/bin/sh

# Initialize ccache if needed
if [ ! -f /srv/ccache/CACHEDIR.TAG ]; then
	echo "Initializing ccache in /srv/ccache..."
	CCACHE_DIR=/srv/ccache ccache -M 50G
fi

export USER="cmbuild"

# Launch screen session
#/bin/bash --login
screen -s /bin/bash
