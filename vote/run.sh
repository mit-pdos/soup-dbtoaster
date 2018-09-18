#!/bin/bash
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:$(dir)/../dbtoaster/lib/dbt_c++/libdbtoaster.a

${dir}/../dbtoaster/bin/dbtoaster -O3 --batch vote.sql -c vote

time ./vote --batch-size 2500 -n
