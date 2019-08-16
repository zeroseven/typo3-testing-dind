#!/bin/bash

docker build --no-cache --pull . -f Dockerfile -t zeroseven07/typo3-testing-dind:latest && docker run --rm -it -v `pwd`/test.sh:/tmp/test.sh zeroseven07/typo3-testing-dind:latest /tmp/test.sh
