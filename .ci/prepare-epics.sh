#!/bin/sh
set -e -x

# Build Base for use with https://travis-ci.org
#

die() {
  echo "$1" >&2
  exit 1
}

cat << EOF > configure/CONFIG_CC.local
E3_CROSS_COMPILER_TARGET_ARCHS=
EOF


make init

bash pkg_automation.bash -y
make env
make patch


