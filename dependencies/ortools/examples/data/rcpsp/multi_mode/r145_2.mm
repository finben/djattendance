************************************************************************
file with basedata            : cr145_.bas
initial value random generator: 1772899036
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  110
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       20        5       20
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6   9  12
   3        3          2           5   8
   4        3          2          11  13
   5        3          3           6   7  10
   6        3          2          14  15
   7        3          2           9  12
   8        3          3          11  13  15
   9        3          3          11  13  14
  10        3          2          12  15
  11        3          1          16
  12        3          1          16
  13        3          1          17
  14        3          2          16  17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     1       7   10    8
         2     2       6    9    5
         3     2       7    9    4
  3      1     1       2    6    5
         2     4       1    6    4
         3     5       1    5    4
  4      1     1       4    7    9
         2     2       4    7    8
         3    10       3    1    6
  5      1     5       5    4    7
         2     7       5    1    7
         3     7       5    2    5
  6      1     5      10    5    6
         2     6       6    5    5
         3     9       2    5    2
  7      1     8       7    8    9
         2     9       4    7    5
         3    10       3    4    5
  8      1     5       9    6    6
         2     6       9    5    6
         3     8       6    5    1
  9      1     1       8    6    4
         2     2       5    5    3
         3     4       4    3    3
 10      1     2       4    5    9
         2     2       3    6    7
         3     3       1    5    2
 11      1     2       7    8   10
         2     7       5    4    8
         3     9       5    3    7
 12      1     2       7    6    7
         2     4       5    6    5
         3     4       2    6    7
 13      1     2       9    6    7
         2     3       8    5    6
         3     7       6    5    6
 14      1     1       5   10    8
         2     2       5    8    4
         3     4       5    4    1
 15      1     4       8    6    8
         2     8       8    5    5
         3    10       7    5    2
 16      1     3       8    5    8
         2     7       6    5    8
         3     9       5    3    8
 17      1     2       3    1    3
         2     4       2    1    3
         3     9       2    1    2
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  N 1  N 2
   12   83   89
************************************************************************
