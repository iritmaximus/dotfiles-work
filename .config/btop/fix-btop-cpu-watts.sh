#!/usr/bin/env bash
set -eu

sudo setcap "cap_perfmon=+ep cap_dac_read_search=+ep" /usr/bin/btop
