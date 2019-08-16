#!/bin/bash

echo "docker:                " `docker --version` || exit 1
echo "PHP:                   " `php --version` || exit 1
echo "Composer:              " `composer --version` || exit 1
echo "Node:                  " `node --version` || exit 1
echo "NPM:                   " `npm --version` || exit 1
