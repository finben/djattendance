************************************************************************
file with basedata            : cn151_.bas
initial value random generator: 1660145554
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  129
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       28        3       28
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3          10  12  13
   3        3          1           6
   4        3          2           5  11
   5        3          2           8  15
   6        3          3           7   9  11
   7        3          3           8  10  16
   8        3          2          13  14
   9        3          3          10  13  16
  10        3          2          14  15
  11        3          3          12  14  15
  12        3          1          16
  13        3          1          17
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     5       0    2    9
         2     6       6    0    6
         3    10       4    0    5
  3      1     6       7    0    7
         2     8       6    0    7
         3     9       0    6    7
  4      1     1       0    8    7
         2     7       0    5    6
         3    10       5    0    5
  5      1     1       0    2    8
         2     4       7    0    8
         3     5       0    2    7
  6      1     1       0    4    7
         2     3      10    0    4
         3     4       0    3    2
  7      1     8       0    3    8
         2     9       0    2    7
         3    10       0    1    5
  8      1     5       0    5    4
         2     6       9    0    3
         3     9       9    0    2
  9      1     2       5    0    2
         2     3       4    0    2
         3     8       0    4    2
 10      1     3       8    0    8
         2     6       0    4    6
         3    10       5    0    3
 11      1     1      10    0    6
         2     3      10    0    5
         3     5       0    4    4
 12      1     1       6    0    4
         2     9       0    3    4
         3     9       0    5    3
 13      1     7       0    8    5
         2     7       6    0    7
         3    10       0    8    3
 14      1     2       8    0    2
         2     4       7    0    2
         3     5       6    0    2
 15      1     2       0    5    4
         2     2       2    0    4
         3     7       0    5    3
 16      1     4       0    7    7
         2     7       7    0    5
         3     9       2    0    5
 17      1     1       0    8    9
         2     4       0    6    7
         3     9       5    0    4
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
   20   15   90
************************************************************************
