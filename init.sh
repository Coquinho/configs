#!/bin/bash
SELFPATH="$(cd $(dirname "$0") && pwd)"
git submodule init 
git submodule update
bash "${SELFPATH}"/link.sh
bash "${SELFPATH}"/migrate.sh
