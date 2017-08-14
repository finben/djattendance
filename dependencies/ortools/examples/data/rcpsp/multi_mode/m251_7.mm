************************************************************************
file with basedata            : cm251_.bas
initial value random generator: 308816507
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  101
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       30        4       30
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        2          3           7   8   9
   3        2          3           9  10  15
   4        2          3           5   9  17
   5        2          2           6  12
   6        2          3          10  11  15
   7        2          2          12  14
   8        2          3          10  11  17
   9        2          2          11  13
  10        2          1          13
  11        2          1          16
  12        2          2          15  16
  13        2          1          16
  14        2          1          17
  15        2          1          18
  16        2          1          18
  17        2          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3       0    3    5    6
         2     6       8    0    4    5
  3      1     8       9    0    2    7
         2    10       0   10    1    6
  4      1     4       5    0    7    7
         2     5       0    4    6    7
  5      1     5       0    5    6    5
         2    10       0    5    5    5
  6      1     4       0    9    5    3
         2     4       8    0    8    2
  7      1     3       0    5    5    2
         2     6       0    5    4    2
  8      1     4       0    4    8    8
         2     6       0    1    6    8
  9      1     2       0    2    6    5
         2     3       0    1    6    3
 10      1     3       5    0    6    8
         2     8       0    6    4    8
 11      1     2       0    2    5    4
         2     5       3    0    4    3
 12      1     2       0    9    5    8
         2     8       0    5    4    5
 13      1     4       4    0    2    7
         2     8       2    0    2    3
 14      1     5       4    0   10    6
         2     6       4    0    4    6
 15      1     2       0    8    2    4
         2     4       0    7    2    4
 16      1    10       0   10    9    5
         2    10       9    0    8    4
 17      1     1       2    0    3    5
         2     2       0    8    3    3
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   18   23   84   86
************************************************************************
