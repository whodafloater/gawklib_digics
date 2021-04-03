
unset AWKLIBPATH

gawk -f _arr.mod -f walk_array.awk -f test_arr.awk

gawk --version
