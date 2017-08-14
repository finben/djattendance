************************************************************************
file with basedata            : cm514_.bas
initial value random generator: 514372502
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  133
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       14        1       14
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        5          3           5  10  12
   3        5          2           6  12
   4        5          3           7   8  12
   5        5          3           6   8  11
   6        5          2          16  17
   7        5          2          14  15
   8        5          3           9  13  15
   9        5          2          16  17
  10        5          1          13
  11        5          2          13  15
  12        5          1          14
  13        5          1          14
  14        5          2          16  17
  15        5          1          18
  16        5          1          18
  17        5          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     2      10    2   10    0
         2     5      10    2    0    9
         3     9      10    2    9    0
         4     9       9    2    0    7
         5    10       9    2    0    5
  3      1     4       8   10    5    0
         2     8       7    6    0    8
         3    10       6    6    1    0
         4    10       6    6    0    6
         5    10       5    6    0    7
  4      1     3       8    6    0    5
         2     4       6    5    2    0
         3     5       4    5    2    0
         4     8       3    4    1    0
         5    10       2    4    1    0
  5      1     1       9    5   10    0
         2     5       9    4    9    0
         3     8       7    4    0    4
         4     8       6    3    6    0
         5    10       5    3    0    4
  6      1     1       6   10    4    0
         2     2       3    8    0    7
         3     7       2    8    0    6
         4     7       2    7    3    0
         5     7       2    7    0    7
  7      1     1       6    8    0    8
         2     2       5    6    0    8
         3     2       6    7    0    7
         4     6       3    4    0    7
         5     7       2    2    0    6
  8      1     3      10    6    9    0
         2     3       9    6   10    0
         3     4       8    6    9    0
         4     5       7    5    7    0
         5     8       6    5    6    0
  9      1     3       4    8    7    0
         2     3       3    8    8    0
         3     4       3    6    0    3
         4     7       2    6    0    3
         5     7       2    6    6    0
 10      1     1       9    8    0    8
         2     1       8    8    8    0
         3     3       8    7    8    0
         4     6       5    5    0    6
         5     7       3    5    6    0
 11      1     2       7    9    0    8
         2     2       7    9    4    0
         3     4       6    9    0    6
         4     7       6    8    0    6
         5     8       5    8    0    4
 12      1     2      10   10    9    0
         2     2       8   10   10    0
         3     4       8    9    8    0
         4     6       4    9    6    0
         5     9       2    7    4    0
 13      1     1       4    8    0    2
         2     1       4    6    5    0
         3     1       3    7    6    0
         4     2       3    5    4    0
         5     4       1    4    2    0
 14      1     3       8    9    0   10
         2     8       6    8    8    0
         3     8       7    7    0    9
         4    10       3    7    7    0
         5    10       4    5    0    9
 15      1     5       8    9    7    0
         2     7       8    8    0    4
         3     8       7    6    0    4
         4     9       5    6    7    0
         5    10       3    4    0    3
 16      1     4      10   10    6    0
         2     5       9    8    0    8
         3     5       9    9    6    0
         4     7       7    7    0    8
         5     8       5    5    3    0
 17      1     1       3   10    7    0
         2     2       2    9    7    0
         3     3       2    7    5    0
         4     6       1    6    4    0
         5     8       1    5    0    8
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   22   22   58   49
************************************************************************
