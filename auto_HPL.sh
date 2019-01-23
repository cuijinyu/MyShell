echo "Begin linpack(HPL) tests"
  
   # function to create HPL file
   # $1 -> filename
   # $2 -> P
   # $3 -> Q
   # $4 -> NS
   function create_hpl_configure_file {
       echo "create file $1 successful";
      touch $1;
      echo "HPLinpack benchmark input file" >> $1
      echo "Innovative Computing Laboratory, University of Tennes    see" >> $1
      echo "HPL.out      output file name (if any)" >> $1
      echo "6            device out (6=stdout,7=stderr,file)" >>     $1
      echo "1            # of problems sizes (N)" >> $1
      echo "$4         Ns" >> $1
      echo "1            # of NBs
    192      NBs
    1            PMAP process mapping (0=Row-,1=Column-major)
    1            # of process grids (P x Q)
    $2            Ps
    $3            Qs
    16.0         threshold
    1            # of panel fact
    2 1 2        PFACTs (0=left, 1=Crout, 2=Right)
    1            # of recursive stopping criterium
    2 4          NBMINs (>= 1)
    1            # of panels in recursion
    2            NDIVs
    1            # of recursive panel fact.
    1 1 2        RFACTs (0=left, 1=Crout, 2=Right)
    1            # of broadcast
    0            BCASTs (0=1rg,1=1rM,2=2rg,3=2rM,4=Lng,5=LnM)
    1            # of lookahead depth
    0            DEPTHs (>=0)
    2            SWAP (0=bin-exch,1=long,2=mix)
    1           swapping threshold
    1            L1 in (0=transposed,1=no-transposed) form
    1            U  in (0=transposed,1=no-transposed) form
    0            Equilibration (0=no,1=yes)
    8            memory alignment in double (> 0)" >> $1
  }
  for((i=50000;i<=110000;i=i+10000));
      do
          echo "now do $(expr $i)_4_8_HPL"
          create_hpl_configure_file "$(expr $i)_4_8_HPL.dat" "4"     "8" "$(expr $i)"
          rm HPL.dat
          rename "$(expr $i)_4_8_HPL.dat" "4" "8" "$(expr $i)" "H    PL.dat"
          mpirun -n 32 >> "$(expr $i)_4_8_log.txt"
          echo "now $(expr $i)_4_8_HPL has done"
      done