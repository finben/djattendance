************************************************************************
file with basedata            : cr417_.bas
initial value random generator: 221808987
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  138
RESOURCES
  - renewable                 :  4   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       24        1       24
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6  11  12
   3        3          1           5
   4        3          3           9  10  12
   5        3          2           6   7
   6        3          3           9  13  15
   7        3          3           8  10  11
   8        3          3          12  13  15
   9        3          2          14  17
  10        3          1          13
  11        3          2          15  17
  12        3          1          16
  13        3          2          14  17
  14        3          1          16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0
  2      1     2       0    6    0    0    4    0
         2     5       9    5    0    8    0    5
         3     7       0    5    0    5    0    3
  3      1     4       0    0    7    7    0    6
         2     7       0    0    0    7    0    6
         3     9       0    0    6    7   10    0
  4      1     1       9    6    0    6    1    0
         2     3       0    4    5    5    0    6
         3     9       8    0    4    0    0    2
  5      1     1       4    0    0    2    0    6
         2     7       0    1    0    0    0    5
         3    10       0    0   10    0    2    0
  6      1     4       0    3    3    4    0    6
         2     4       3    5    0    0    0    6
         3     9       3    0    0    0    0    4
  7      1     5       7    3    0    7    0    5
         2     7       6    3    0    0    0    4
         3    10       2    2    2    6    8    0
  8      1     1       3    0    0    6    0    2
         2     7       3    0    0    6    6    0
         3     8       2    0    2    0    0    1
  9      1     2       6    6    0    5    0    5
         2     7       0    5    7    3    7    0
         3     9       4    3    7    3    5    0
 10      1     5       0    0    0    7    0    8
         2     7       3    1    0    0    0    7
         3    10       0    0    0    2    4    0
 11      1     1       0    6    0    0    4    0
         2     1       0    2    0    0    0    5
         3     7       0    0    2    6    0    3
 12      1     5       7    7    0    0    8    0
         2     9       6    0    2    5    0    6
         3    10       0    4    0    2    7    0
 13      1     3       7    0    4    0    3    0
         2     8       0    0    4    0    0    9
         3     9       7    0    2    0    0    9
 14      1     5       0    0    8    6    0    5
         2     6       5    0    7    0    3    0
         3     9       0    3    0    6    2    0
 15      1     2       0    3    7    0    0    4
         2     3       0    0    5    6    0    4
         3    10       0    0    0    2    0    3
 16      1     1       6    0    0    0    0    6
         2     4       5    3    0    0   10    0
         3     5       2    0    7   10   10    0
 17      1     2       0    6    0    7    0    8
         2     6       0    6    0    7    0    6
         3     7       0    0    0    5    0    4
 18      1     0       0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  N 1  N 2
    6    7    5   11   53   72
************************************************************************
