************************************************************************
file with basedata            : cm127_.bas
initial value random generator: 1247477151
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  65
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       31        9       31
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          3           5  10  12
   3        1          3          10  16  17
   4        1          3           8  10  12
   5        1          3           6   9  15
   6        1          3           7   8  13
   7        1          2          11  14
   8        1          2          14  17
   9        1          2          11  16
  10        1          1          15
  11        1          1          17
  12        1          2          13  15
  13        1          1          14
  14        1          1          16
  15        1          1          18
  16        1          1          18
  17        1          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1    10       5    0    0    4
  3      1     9       0    8    0    8
  4      1     1       0    8    9    0
  5      1    10       0    5    5    0
  6      1     1       0    8    4    0
  7      1     5       0    5    0    2
  8      1     1       8    0    6    0
  9      1     7       5    0    0    8
 10      1     7       0    6    0    3
 11      1     3       8    0    0    4
 12      1     1       0    6    0    4
 13      1     1       0    6    0    9
 14      1     1       0    8    4    0
 15      1     4       5    0    0    7
 16      1     3       0    6    6    0
 17      1     1       7    0    1    0
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   16   15   35   49
************************************************************************
