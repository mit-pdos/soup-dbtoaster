#!/bin/bash
URL="https://dbtoaster.github.io/dist/dbtoaster_linux_3387.tgz"

wget ${URL} -O dbtoaster.tar.gz
tar -xvzf dbtoaster.tar.gz
rm dbtoaster.tar.gz

cd dbtoaster/lib/dbt_c++/
make

echo
echo "Toaster bootstrapped."
