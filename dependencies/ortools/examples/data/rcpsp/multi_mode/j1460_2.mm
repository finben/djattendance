************************************************************************
file with basedata            : md188_.bas
initial value random generator: 709704437
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  16
horizon                       :  119
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     14      0       19       10       19
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6   7   8
   3        3          2           5  10
   4        3          3           5   6  11
   5        3          2           7  15
   6        3          1           9
   7        3          2          12  14
   8        3          3           9  12  15
   9        3          1          10
  10        3          2          13  14
  11        3          3          12  14  15
  12        3          1          13
  13        3          1          16
  14        3          1          16
  15        3          1          16
  16        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3       7    0    7    9
         2     5       6    0    6    8
         3     7       3    0    1    7
  3      1     2       8    0    6    3
         2     3       7    0    5    3
         3    10       4    0    4    3
  4      1     5       5    0   10    9
         2     8       1    0    8    6
         3    10       0    2    5    3
  5      1     2       2    0    3    4
         2     5       0    2    3    4
         3     6       2    0    3    1
  6      1     5       7    0    8    4
         2     7       7    0    7    3
         3     7       0    9    8    1
  7      1     1       7    0    7    4
         2     4       7    0    5    4
         3    10       0    5    5    3
  8      1     2       0   10    9    6
         2     7       0    3    9    6
         3    10       6    0    8    6
  9      1     1       9    0    3   10
         2     7       0    4    2    8
         3     7       9    0    1    8
 10      1     3       0    6    4    5
         2     7       0    5    4    3
         3     8       0    5    3    1
 11      1     3       0    3    5    6
         2     7       0    2    4    6
         3     8       4    0    2    4
 12      1     5       9    0    9    5
         2     6       7    0    8    4
         3    10       0    5    6    1
 13      1     4       0    5    6   10
         2     4       3    0    7    9
         3     6       0    6    5    5
 14      1     5       7    0    7    8
         2     5       0    3    7    8
         3    10       7    0    5    7
 15      1     6       0    5    7    8
         2    10       0    2    6    7
         3    10       0    3    4    7
 16      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   24   19   92   91
************************************************************************
