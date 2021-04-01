3/31/2020
Tom Gray

Fork of https://github.com/digics/gawklib

`_arr.mod` is a collection of functions concatenating arrays of strings.


200k strings case, `_reta()` does in 42 mS while
normal concatatenation in a loop takes 1.8 Sec:

```
function slow_merge(a, i1, i2   ,s, i){
   s = "";
   for(i = i1; i<=i2; i++){
      s = s a[i];
     }
   return s;
}
```

Sample results from `test_arr.sh` are below:

```
thrash slow_merge
thrash slow_merge n=10000 lengths=1 1 1 1 time=0.00246975
thrash _reta
thrash _reta n=10000 lengths=1 1 1 1 time=0.000890234
thrash slow_merge
thrash slow_merge n=200000 lengths=1 64 128 256 time=1.83333
thrash _reta
thrash _reta n=200000 lengths=1 64 128 256 time=0.0423729
stats[  ][  ] =
stats[ 10000 ][ 1 1 1 1 ][ _reta ][ lengths ] = 1 1 1 1
stats[ 10000 ][ 1 1 1 1 ][ _reta ][ n ] = 10000
stats[ 10000 ][ 1 1 1 1 ][ _reta ][ elapsed ] = 10
stats[ 10000 ][ 1 1 1 1 ][ _reta ][ size ] = 9999
stats[ 10000 ][ 1 1 1 1 ][ _reta ][ time ] = 0.000890234
stats[ 10000 ][ 1 1 1 1 ][ _reta ][ iters ] = 11233
stats[ 10000 ][ 1 1 1 1 ][ slow_merge ][ lengths ] = 1 1 1 1
stats[ 10000 ][ 1 1 1 1 ][ slow_merge ][ n ] = 10000
stats[ 10000 ][ 1 1 1 1 ][ slow_merge ][ elapsed ] = 10
stats[ 10000 ][ 1 1 1 1 ][ slow_merge ][ size ] = 9999
stats[ 10000 ][ 1 1 1 1 ][ slow_merge ][ time ] = 0.00246975
stats[ 10000 ][ 1 1 1 1 ][ slow_merge ][ iters ] = 4049
stats[ 200000 ][ 1 64 128 256 ][ _reta ][ lengths ] = 1 64 128 256
stats[ 200000 ][ 1 64 128 256 ][ _reta ][ n ] = 200000
stats[ 200000 ][ 1 64 128 256 ][ _reta ][ elapsed ] = 10
stats[ 200000 ][ 1 64 128 256 ][ _reta ][ size ] = 22449999
stats[ 200000 ][ 1 64 128 256 ][ _reta ][ time ] = 0.0423729
stats[ 200000 ][ 1 64 128 256 ][ _reta ][ iters ] = 236
stats[ 200000 ][ 1 64 128 256 ][ slow_merge ][ lengths ] = 1 64 128 256
stats[ 200000 ][ 1 64 128 256 ][ slow_merge ][ n ] = 200000
stats[ 200000 ][ 1 64 128 256 ][ slow_merge ][ elapsed ] = 11
stats[ 200000 ][ 1 64 128 256 ][ slow_merge ][ size ] = 22449999
stats[ 200000 ][ 1 64 128 256 ][ slow_merge ][ time ] = 1.83333
stats[ 200000 ][ 1 64 128 256 ][ slow_merge ][ iters ] = 6
```
