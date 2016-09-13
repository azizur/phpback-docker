#!/bin/bash
set -eo pipefail

rm -rf .docker;

rm -rf php/phpback;
cp -r ../phpback php/phpback;

# git clone git@github.com:azizur/phpback.git php/phpback;
