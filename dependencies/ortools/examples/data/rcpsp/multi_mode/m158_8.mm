************************************************************************
file with basedata            : cm158_.bas
initial value random generator: 1748073650
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  71
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       28        8       28
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          3           6   9  15
   3        1          3           5   8  11
   4        1          3           7   9  12
   5        1          3           7  16  17
   6        1          2          12  14
   7        1          1          10
   8        1          2           9  15
   9        1          2          13  14
  10        1          1          15
  11        1          2          12  14
  12        1          1          13
  13        1          2          16  17
  14        1          2          16  17
  15        1          1          18
  16        1          1          18
  17        1          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     5       0    8    4    3
  3      1     3       0    8    1    2
  4      1     4       0    3    8    8
  5      1     5      10    0    8    4
  6      1     4       9    0    6    4
  7      1     5       0    2    1    4
  8      1     2       5    0    9    1
  9      1     1       0    7    6    8
 10      1     5       0    5    6    7
 11      1     6       0    8    8    4
 12      1     3       7    0    7    7
 13      1     8       2    0    5    7
 14      1     3       0    6   10    6
 15      1     8       0    6    4    6
 16      1     8       8    0   10    2
 17      1     1       0    8    4    3
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   15   14   97   76
************************************************************************
