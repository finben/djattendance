************************************************************************
file with basedata            : cr313_.bas
initial value random generator: 63954932
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  121
RESOURCES
  - renewable                 :  3   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       15       15       15
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           8  14
   3        3          2           6  13
   4        3          3           5   7   9
   5        3          3          10  13  17
   6        3          1          12
   7        3          2          11  12
   8        3          3           9  10  17
   9        3          2          11  13
  10        3          2          11  16
  11        3          1          15
  12        3          2          14  17
  13        3          2          15  16
  14        3          2          15  16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0
  2      1     5       6    5   10    0    9
         2     7       5    4    7    4    0
         3     9       5    2    6    4    0
  3      1     3       8    6    7    4    0
         2     8       8    6    6    0    9
         3    10       8    5    4    0    5
  4      1     3       9   10    9    4    0
         2     9       8    8    7    2    0
         3    10       8    8    3    0    9
  5      1     2       6    5    8    0    9
         2     2       6    5    9    4    0
         3     8       6    4    6    0   10
  6      1     2       9    5    3    0    2
         2     8       8    2    3    6    0
         3    10       8    2    2    6    0
  7      1     6      10    7   10    5    0
         2     8       3    6    5    5    0
         3     8       5    5    7    4    0
  8      1     4       6    7    9    3    0
         2     8       3    7    7    0    3
         3     8       6    6    7    0    2
  9      1     2       8    5   10    0    8
         2     6       5    4    8    0    8
         3     7       4    2    6    0    6
 10      1     2       9   10    4    0    6
         2     8       8    7    3   10    0
         3     9       6    3    1    8    0
 11      1     2       6    9    6    4    0
         2     2       5    7    6    0    4
         3     8       5    4    2    4    0
 12      1     3       7    6    9    5    0
         2     4       6    6    9    5    0
         3     8       3    4    8    5    0
 13      1     3       8    7    8    3    0
         2     6       6    6    8    0   10
         3     8       3    3    8    0   10
 14      1     2       6    9    8    0    6
         2     7       3    9    8    0    5
         3     8       2    8    8    3    0
 15      1     1       6    4    5    0    8
         2     5       4    3    5    0    6
         3     5       3    4    4    7    0
 16      1     1       8    8    3    7    0
         2     2       7    6    2    0    6
         3     3       6    4    1    0    5
 17      1     1       5    9    3    0    9
         2     2       4    3    3    5    0
         3     2       4    4    3    0    8
 18      1     0       0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  N 1  N 2
   14   15   14   42   53
************************************************************************
