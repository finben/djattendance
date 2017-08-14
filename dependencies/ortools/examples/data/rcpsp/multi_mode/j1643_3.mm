************************************************************************
file with basedata            : md235_.bas
initial value random generator: 65864810
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  135
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       23       15       23
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   8
   3        3          2           8  10
   4        3          3           7  11  12
   5        3          2          13  15
   6        3          3           7  12  14
   7        3          2          15  16
   8        3          2           9  17
   9        3          2          11  13
  10        3          3          14  16  17
  11        3          1          14
  12        3          2          13  17
  13        3          1          16
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     6       0    7    5    9
         2     8       6    0    5    8
         3    10       5    0    2    7
  3      1     5       6    0    8    3
         2     7       6    0    7    3
         3     7       0    7    5    3
  4      1     6       0    9    6    8
         2     6       7    0    6    9
         3     7       0    9    4    4
  5      1     3       0    7    9    8
         2     3       8    0    9    8
         3     4       7    0    8    6
  6      1     5       6    0    7    8
         2     9       4    0    4    7
         3    10       0    9    4    6
  7      1     3       8    0    4    9
         2     3       0    4    4    8
         3     6       8    0    3    6
  8      1     1       9    0    6    7
         2     2       8    0    5    5
         3     6       4    0    2    4
  9      1     1       6    0    6   10
         2    10       0    5    5    6
         3    10       0    6    4    6
 10      1     2       4    0    6    9
         2     3       4    0    6    8
         3    10       0    6    5    7
 11      1     2       5    0    8    4
         2     9       3    0    7    4
         3    10       0    1    7    2
 12      1     2       0    4    9    8
         2     4       0    4    8    8
         3    10       0    4    8    6
 13      1     9       9    0    6    6
         2     9       0    3    6    4
         3    10      10    0    5    3
 14      1     2       7    0    8    2
         2     8       2    0    5    2
         3    10       0    8    3    1
 15      1     1       7    0    6    7
         2     7       7    0    6    6
         3    10       6    0    5    5
 16      1     1       2    0    2    8
         2     3       0    6    2    6
         3     6       0    2    2    4
 17      1     3       0    8   10    5
         2     9       0    8    8    5
         3     9       5    0    8    2
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   19   22   91   92
************************************************************************
