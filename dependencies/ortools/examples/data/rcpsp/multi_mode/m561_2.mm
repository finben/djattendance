************************************************************************
file with basedata            : cm561_.bas
initial value random generator: 142916953
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  149
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       11        5       11
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        5          2           8  11
   3        5          2           6  16
   4        5          3           5   6   7
   5        5          2          10  16
   6        5          3          12  13  14
   7        5          2           8   9
   8        5          2          10  12
   9        5          3          11  13  17
  10        5          2          13  14
  11        5          2          14  16
  12        5          2          15  17
  13        5          1          15
  14        5          1          15
  15        5          1          18
  16        5          1          18
  17        5          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3      10    8    8    9
         2     4      10    8    7    7
         3     6      10    8    5    5
         4     7       9    8    5    3
         5     9       9    8    3    3
  3      1     4       7    4    8    7
         2     7       6    4    8    7
         3     7       7    3    8    7
         4    10       4    3    6    6
         5    10       3    3    7    6
  4      1     2       5    7    7    8
         2     4       5    6    7    8
         3     5       4    5    6    5
         4     8       3    4    5    5
         5    10       3    3    5    2
  5      1     3       4    9    5    7
         2     4       3    9    4    6
         3     6       3    9    4    4
         4     7       2    8    4    4
         5    10       2    8    3    2
  6      1     2       4    5   10    4
         2     2       5    4   10    4
         3     5       4    2    9    4
         4     5       3    3   10    3
         5     7       2    1    9    3
  7      1     1       7    7    8   10
         2     5       6    6    8    8
         3     7       4    5    7    4
         4     9       2    4    7    3
         5     9       3    4    7    2
  8      1     2       9   10    7    7
         2     4       6   10    6    7
         3     5       6    9    6    7
         4     6       3    9    5    6
         5    10       3    9    4    6
  9      1     2       8    8    8    9
         2     3       8    8    8    8
         3     4       5    7    8    6
         4     6       5    6    8    4
         5    10       4    6    8    3
 10      1     2       6    6    3    5
         2     4       5    6    3    4
         3     6       5    6    2    4
         4     8       3    5    2    3
         5    10       3    5    1    3
 11      1     4       8    5    4    8
         2     4      10    7    4    7
         3     7       7    5    4    7
         4     9       3    4    4    6
         5     9       5    3    4    6
 12      1     2       5    8    8    6
         2     4       3    7    7    6
         3     4       4    6    8    6
         4     8       2    5    6    6
         5     9       1    4    4    5
 13      1     2       6    7    5    8
         2     4       5    6    4    6
         3     4       4    6    5    8
         4     5       3    6    4    6
         5     9       2    4    1    4
 14      1     1       3    7    6   10
         2     2       3    5    6    9
         3     5       3    3    6    7
         4     6       2    3    6    6
         5    10       2    2    6    4
 15      1     1       9    6   10   10
         2     3       8    6    7    9
         3     4       8    6    6    9
         4     5       7    5    6    9
         5     8       6    5    3    8
 16      1     1       2    7    9    7
         2     6       2    7    8    6
         3     8       2    7    7    4
         4     8       2    6    7    5
         5     9       2    6    6    3
 17      1     1       8    8    3    8
         2     6       8    7    3    6
         3     6       7    7    3    8
         4     8       7    4    2    6
         5    10       7    4    1    3
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   14   15  109  123
************************************************************************
