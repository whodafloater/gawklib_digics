# test_arr.awk
# 
# gawk -f _arr.mod -f walk_array.awk -f test_arr.awk
#
# _arr.mod library from https://github.com/digics

BEGIN{

   delete A;
   split( "ABCDEF", A, "" );
   walk_array(A, "A");
   s = _reta( A, 2, 3 );
   print s; if(s != "BCD") exit 1;

   delete a;
   a[1] = "-12";
   a[2] = " ";
   a[3] = "-24";
   s = _reta(a);        print s; if(s != "-12 -24") exit 1;
   s =  _reta3( a, 1 ); print s; if(s != "-12 -24") exit 1;
   s = a[1] a[2] a[3];  print s; if(s != "-12 -24") exit 1;
   s = a[1] " " a[3];   print s; if(s != "-12 -24") exit 1;
   s = "-12" " " "-24"; print s; if(s != "-12 -24") exit 1;
   # string concat gotcha from the manual...
   #    " "-12 is a subtraction op that has precedence over concat
   s = -12" "-24;       print s; if(s != "-12-24") exit 1;
   # now - is not an operator. Works. _reta functions work the same way.
   s = -12" "(-24);     print s; if(s != "-12 -24") exit 1;


   # timing tests
   stats[""][""];
   test_arr(stats, 10,  "1 2 4 8");
   test_arr(stats, 10000,  "1 1 1 1");
   #test_arr(stats, 10000,  "1 64 128 256");
   #test_arr(stats, 50000,  "1 256 512 1024");
   test_arr(stats, 200000, "1 64 128 256");

   walk_array(stats, "stats");
}

function test_arr(stats, n, lengths          , m, len, i, j, s, a, t0, expect, fns){
   repeating_strings = 0;

   # build an array of strings per digi_cs
   if(n=="") n = 200000;
   if(lengths == "") lengths = "1 64 128 256";

   m = split(lengths, len);

   # Same strings over and over or repeating strings?
   # results are the same. gawk has no internal optimizations for strings.
   if(!repeating_strings){
      for(i = 1; i <= m; i++) {
         for(j = 1; j <= len[i]; j++) {
            s[i] = s[i] i;
         }
         #print i, s[i];
      }
      for(i = 0; i<n; i++){
         a[i] = s[(i % m) + 1];
      }
   } else {
      for(i = 0; i<n; i++){
         a[i] = rand_str(len[(i % m) + 1]);
      }
   }

   # make sure all results match this one:
   expect = _reta(a, 1, n);

   #walk_array(a, "a");

   fns[n][lengths]["_reta"];
   fns[n][lengths]["slow_merge"];
   #fns["rev_merge"]; # painfully slow

   for(f in fns[n][lengths]){
      stats[n][lengths][f]["n"] = n;
      stats[n][lengths][f]["lengths"] = lengths;
      # thrash          _reta(a, 1, n) for at least 10 sec ...
      print "thrash", f
      thrasher(stats[n][lengths][f],   f, a, 1, n, expect,      10, 1);
      print "thrash", f, "n="n, "lengths="lengths, "time="stats[n][lengths][f]["time"];
     }
}

function slow_merge(a, i1, i2   ,s, i){
   s = "";
   for(i = i1; i<=i2; i++){
      s = s a[i];
     }
   return s;
}

function rev_merge(a, i1, i2   ,s, i){
   # prepending strings like this is really slow ...
   s = "";
   i = i2;
   while(i >= i1) {
      s = a[i--] s;
     }
   return s;
}

function thrasher(stats, fn, a1, a2, a3, expect, timewindow, miniters    , iters, t0, elapsed, result) {
   # See how many times we can run fn(a1,a2,a3) in a timewindow
   #
   # Make sure fn(a1,a2,a3) == expect
   #
   # systime has 1 sec resolution so run for at least 10sec
   # to get 10% timing accuracy
   
   iters = 0;
   elapsed = 0;

   # wait for clock to tick
   t0 = systime();
   while(systime() == t0);
   t0 = systime();

   while(elapsed < timewindow*1 || iters < miniters*1) {
      result = @fn(a1,a2,a3);
      elapsed = systime() - t0;
      iters ++;
   }

   if(result != expect) stats["ERROR"]["result does not match expected value"]

   stats["iters"] = iters;
   stats["elapsed"] = elapsed;
   stats["time"] = elapsed / iters;
   stats["size"] = length(result);

   return elapsed / iters;
}

function rand_str(n   , s){
   while(n>0) {
      s = s sprintf("%c", int(rand()*92)+32);
      n--;
   }
   return s;
}
