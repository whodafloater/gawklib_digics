
function walk_array(arr, name, outfile, i) {
   if(!(isarray(arr))) {
      if(arr=="") {
         if(name) name = name " = ";
         print name "null";
         return;
        }
      if(arr in mem) {
         if(name=="") return walk_array(mem[arr], "mem["arr"]", outfile);
         return walk_array(mem[arr], name, outfile);
        }
      print "arr="arr;
      return;
     }

   for(i in arr) {
      if(isarray(arr[i])) {
         walk_array(arr[i], (name "[ "i" ]"), outfile)
        }
      else {
         if(outfile!="") {
            printf("%s[ %s ] = %s\n", name, i, arr[i]) > outfile
           }
         else {
            printf("%s[ %s ] = %s\n", name, i, arr[i])
           }
        }
     }
}
