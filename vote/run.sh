#!/bin/bash
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:$(dir)/../dbtoaster/lib/dbt_c++/libdbtoaster.a

${dir}/../dbtoaster/bin/dbtoaster vote.sql -c vote

time ./vote -n
