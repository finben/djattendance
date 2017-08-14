************************************************************************
file with basedata            : md242_.bas
initial value random generator: 4158
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  130
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       29       12       29
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   8  13
   3        3          3           6   8  10
   4        3          3           6   8  17
   5        3          3           7  11  14
   6        3          2           9  13
   7        3          2          10  12
   8        3          2           9  15
   9        3          1          11
  10        3          2          16  17
  11        3          1          12
  12        3          1          16
  13        3          2          15  16
  14        3          2          15  17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     5       9    0    7    5
         2     6       6    0    6    3
         3     8       0    3    5    2
  3      1     2       0    7    8    9
         2     8       0    6    5    8
         3     8       3    0    2    8
  4      1     1       0    8    2    5
         2     5       0    3    2    5
         3     7      10    0    2    5
  5      1     7      10    0    8    8
         2    10       8    0    5    7
         3    10       0    3    2    7
  6      1     4       0    4    8    9
         2     8       0    3    8    6
         3    10      10    0    5    3
  7      1     6       0    6    7    7
         2     8       8    0    6    7
         3    10       6    0    6    6
  8      1     3       7    0    3    2
         2     3       0    6    3    2
         3     4       0    5    3    2
  9      1     2       0    8    9    7
         2     6       0    7    9    5
         3     8       0    7    7    2
 10      1     1       0    7    6    6
         2     2       9    0    6    4
         3     5       0    5    3    3
 11      1     1       5    0    3    5
         2     3       0    7    2    4
         3     5       5    0    2    2
 12      1     6       0    8    8    7
         2     7       5    0    5    6
         3    10       5    0    5    4
 13      1     1       0    8    8    3
         2     5       0    5    8    2
         3     7       9    0    7    2
 14      1     4       6    0    4    7
         2     5       0    1    4    7
         3    10       5    0    3    7
 15      1     6       0    8    7    4
         2     9       0    6    3    4
         3     9       5    0    4    4
 16      1     5       5    0   10   10
         2     6       0    6    6    8
         3    10       2    0    5    6
 17      1     3       4    0    5    3
         2     7       1    0    4    3
         3     9       0    9    4    3
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   14   16   93   89
************************************************************************
