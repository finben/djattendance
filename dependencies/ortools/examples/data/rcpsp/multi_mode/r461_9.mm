************************************************************************
file with basedata            : cr461_.bas
initial value random generator: 326986699
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  142
RESOURCES
  - renewable                 :  4   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       20        0       20
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   7   8
   3        3          3           6   8  12
   4        3          3           7  12  14
   5        3          3           6  12  15
   6        3          3          10  13  14
   7        3          2          11  16
   8        3          1           9
   9        3          3          10  11  17
  10        3          1          16
  11        3          1          15
  12        3          2          13  16
  13        3          1          17
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0
  2      1     4       8    6    8    3    7    5
         2     7       8    3    8    3    4    5
         3     9       6    3    8    3    2    4
  3      1     3       6    9    5    8    8   10
         2     6       4    8    5    6    6    9
         3    10       4    6    4    4    4    6
  4      1     5       4    6    6    8    9    7
         2     7       2    5    3    8    6    6
         3     7       3    6    5    7    2    5
  5      1     2       4    9    9    8    6    9
         2     6       4    8    7    7    4    9
         3     7       3    7    3    7    4    8
  6      1     1       6    7    7    3    5    9
         2     4       4    5    5    2    4    9
         3     6       3    3    5    1    4    8
  7      1     5       7    6    5    4    5    5
         2     9       3    6    4    4    4    3
         3     9       4    6    4    4    2    2
  8      1     1       9   10    1    9    8    4
         2     7       8    8    1    8    7    4
         3    10       6    7    1    4    6    3
  9      1     2       7    4   10   10    9    3
         2     9       6    4    8    8    9    2
         3    10       2    3    4    8    9    1
 10      1     7       5    5    9    5    6    7
         2     8       5    5    8    5    5    6
         3    10       4    4    7    5    5    6
 11      1     1       7    4    9    2    6    8
         2     7       6    3    6    2    5    7
         3    10       5    3    4    1    4    7
 12      1     6       9   10    6    5    8    9
         2     9       7    9    6    4    8    9
         3    10       7    7    5    3    7    8
 13      1     2       4    4    8    9    7    9
         2     3       4    3    7    8    7    8
         3     9       3    3    6    8    5    8
 14      1     1       6    4    4    7    8    4
         2     9       4    2    4    5    6    3
         3    10       3    2    4    5    6    3
 15      1     5       6    7    9    7    9    9
         2     6       6    6    8    7    9    7
         3    10       6    6    8    5    7    7
 16      1     4       3    6    8    6    6    5
         2     4       3    5    9    6    9    8
         3     7       3    5    3    3    5    2
 17      1     6       8    8    5   10    4    8
         2     7       6    5    5   10    3    8
         3     8       5    3    5    9    3    7
 18      1     0       0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  N 1  N 2
   13   12   13   13  114  114
************************************************************************
