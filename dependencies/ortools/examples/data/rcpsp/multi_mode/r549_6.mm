************************************************************************
file with basedata            : cr549_.bas
initial value random generator: 1641321737
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  118
RESOURCES
  - renewable                 :  5   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       17       14       17
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6   8  14
   3        3          3           7  10  13
   4        3          3           5   9  15
   5        3          2           6   7
   6        3          1          13
   7        3          3          11  12  14
   8        3          2          11  15
   9        3          2          12  17
  10        3          3          11  14  15
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
jobnr. mode duration  R 1  R 2  R 3  R 4  R 5  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0    0
  2      1     3       0    7    0    3    0    3    9
         2     6       0    7    7    0    9    3    7
         3     8       0    6    3    0    5    2    5
  3      1     1       0    4    0    8    9    5    4
         2     3       2    2    7    6    9    5    3
         3     6       0    0    5    5    0    2    3
  4      1     4       0    0    0    0    9    9   10
         2     5       3    8    0    0    6    9    9
         3     9       2    3    0    8    0    9    8
  5      1     2       0    4    0    6    0    7    7
         2     4       5    2    2    2    3    7    6
         3     8       3    0    0    0    0    6    2
  6      1     6       8    0    0    0    8    2    8
         2     6       0    0    0    2    7    2    8
         3     7       8    0    8    0    1    2    8
  7      1     1       0    6    5    0    5    2    4
         2     5       0    5    1    3    0    1    3
         3    10       0    5    0    0    0    1    1
  8      1     1       6    0    6    0    0    4    6
         2     5       3    8    3    0    2    3    4
         3     5       5    0    5   10    0    3    6
  9      1     2       9    2    0    0    8    5    9
         2     2       9    2    3    0    0    5    9
         3     7       4    1    0    5    8    4    9
 10      1     5       0    7    6    8    0    9   10
         2     7       7    0    4    5    9    6    7
         3     9       6    0    0    0    8    6    4
 11      1     7       0    0    7    8    5    9    5
         2     7       7    5    0    7    0    9    5
         3     9       0    5    0    0    4    4    2
 12      1     1       1    7    0    0    7    7    7
         2     4       0    0    8    0    0    5    3
         3     4       0    0    0    8    0    3    3
 13      1     4       5    9    0    0    0    9    5
         2     5       0    0    0    0    3    9    4
         3     7       4    0    0    7    0    9    3
 14      1     2       7    2    7    0   10    5    6
         2     5       6    0    4    0    0    4    4
         3     5       0    0    6    0    0    5    2
 15      1     3       0    6    0    0   10    7    8
         2     9       0    0    8   10    0    7    7
         3    10       0    5    0    9    8    7    6
 16      1     1       7    9    6    0    0    7    9
         2     2       0    0    0    8    7    6    6
         3     7       0    0    6    7    7    5    5
 17      1     1       0    0    2    0    6   10    9
         2     3      10    0    0    4    6    9    6
         3     7       0    0    0    4    0    9    4
 18      1     0       0    0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  R 5  N 1  N 2
    9   10   13   12    8   94  104
************************************************************************
