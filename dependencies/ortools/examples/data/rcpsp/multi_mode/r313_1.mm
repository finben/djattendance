************************************************************************
file with basedata            : cr313_.bas
initial value random generator: 25847
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  146
RESOURCES
  - renewable                 :  3   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       27        2       27
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3          10  13  15
   3        3          3           6   7  15
   4        3          3           5   6   7
   5        3          3           8   9  14
   6        3          3          10  12  16
   7        3          1           9
   8        3          3          10  12  13
   9        3          3          11  12  16
  10        3          1          17
  11        3          1          17
  12        3          1          17
  13        3          1          16
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0
  2      1     1       7    8    5    0    6
         2     7       5    5    5    0    4
         3     8       4    4    4    2    0
  3      1     4       8    6    8    6    0
         2     6       6    5    7    0    8
         3    10       4    3    4    6    0
  4      1     2       5    8    6    0    9
         2     2       5    7    7    0    8
         3    10       3    5    4    9    0
  5      1     1       6    9    3    0    7
         2     7       6    8    3    0    6
         3     8       5    8    2    8    0
  6      1     6      10    8    4   10    0
         2     9      10    5    4    7    0
         3    10       9    3    3    0    5
  7      1     4       7    6    8    0    3
         2     7       6    6    6    7    0
         3     9       4    4    4    6    0
  8      1     6       7    4    9    4    0
         2     7       5    3    4    0    7
         3     9       4    2    4    2    0
  9      1     9       4    9    7    0    8
         2     9       4    9    7    6    0
         3    10       4    9    6    0    7
 10      1     3       5    7   10   10    0
         2    10       1    3   10    5    0
         3    10       2    3   10    0    7
 11      1     8       5    8   10    0    2
         2     9       4    8    9    3    0
         3    10       4    8    7    0    2
 12      1     1       2    2    4    0    6
         2     8       2    2    4    0    5
         3    10       1    2    2    8    0
 13      1     6       6   10    5    7    0
         2     8       6    5    4    0    7
         3    10       3    5    3    6    0
 14      1     1       9    8    7    7    0
         2     8       6    8    6    6    0
         3     8       8    8    5    6    0
 15      1     5       9   10    4    7    0
         2     5       7   10    5    0    3
         3     6       6    7    1    7    0
 16      1     1       7    7    9    0    7
         2     8       6    6    9    0    3
         3     9       6    6    8    8    0
 17      1     2       2    3    6    0    5
         2     2       3    3    5    0    6
         3     9       2    1    4    7    0
 18      1     0       0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  N 1  N 2
   15   15   14   58   46
************************************************************************
