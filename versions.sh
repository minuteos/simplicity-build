#!/bin/sh

exec ./director.sh -l | grep -E "^com\.silabs\.(ss\.toolchain\.gnu\.arm|stack\..+|sdk\.gecko.+).*\.feature\.feature\.group"
