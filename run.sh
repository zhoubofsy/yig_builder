#!/bin/bash


YIG_DIR_HOST=/home/zhoub/src/yig
YIG_DIR_INNER=/go/src/github.com/journeymidnight/yig

docker run --workdir $YIG_DIR_INNER --rm -v $YIG_DIR_HOST:$YIG_DIR_INNER --network host yig_build:v1.0.0
docker run --workdir $YIG_DIR_INNER --rm -v $YIG_DIR_HOST:$YIG_DIR_INNER --network host yig_rpm_build:v1.0.0
