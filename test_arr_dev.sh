
# make install make install DESTDIR=/devtest

GAWK=/devtest/usr/local/bin/gawk

export AWKLIBPATH=/devtest/usr/local/lib/gawk

$GAWK -f _arr.mod -f walk_array.awk -f test_arr.awk

$GAWK --version
