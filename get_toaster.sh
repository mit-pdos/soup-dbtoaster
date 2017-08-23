#!/bin/bash
URL="http://web.archive.org/web/20161011041048/http://www.dbtoaster.org/dist/dbtoaster_ubuntu14.04_x86_64_3387.tgz"

wget ${URL} -O dbtoaster.tar.gz
tar -xvzf dbtoaster.tar.gz
rm dbtoaster.tar.gz

cd dbtoaster/lib/dbt_c++/
make

echo
echo "Toaster bootstrapped."
