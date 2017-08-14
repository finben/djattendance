************************************************************************
file with basedata            : md366_.bas
initial value random generator: 965390156
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  22
horizon                       :  153
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     20      0       22       17       22
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           7   9
   3        3          3           8  12  19
   4        3          2           5  12
   5        3          3           6  10  16
   6        3          2          13  18
   7        3          3          11  14  18
   8        3          1          15
   9        3          1          10
  10        3          3          14  17  21
  11        3          2          12  19
  12        3          2          13  16
  13        3          2          17  21
  14        3          2          19  20
  15        3          3          16  18  21
  16        3          1          17
  17        3          1          20
  18        3          1          20
  19        3          1          22
  20        3          1          22
  21        3          1          22
  22        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3       7   10    5   10
         2     7       7    9    4    9
         3    10       6    9    4    6
  3      1     2       7   10   10   10
         2     2       9   10    8   10
         3     5       2    9    6    9
  4      1     2       4    4    4    7
         2     3       4    3    4    7
         3     6       3    3    3    6
  5      1     1       8    8    5    4
         2     2       8    4    4    3
         3    10       7    2    2    3
  6      1     5       6    7    4    6
         2     8       6    2    3    5
         3     8       6    5    3    2
  7      1     1       6    7    5    4
         2     1       6    8    6    3
         3     4       5    6    3    3
  8      1     3       9    7    8    3
         2     5       8    6    7    3
         3     5       9    5    7    2
  9      1     1       8   10   10    7
         2     8       4   10    1    4
         3     8       2   10    3    2
 10      1     1       6    4    6    8
         2     4       4    1    6    6
         3     4       4    3    6    5
 11      1     1       5    2    8    8
         2     6       5    2    6    7
         3     9       3    2    6    7
 12      1     4       7    6    4   10
         2     9       6    5    4    5
         3    10       6    2    4    2
 13      1     2       8    7   10   10
         2     5       8    5    9    9
         3     7       8    2    8    9
 14      1     2       9    4    6    3
         2     3       9    3    6    3
         3     6       9    1    5    2
 15      1     1       8    8    8    5
         2     7       8    5    8    5
         3    10       7    4    7    3
 16      1     5       8    4    9    9
         2     9       6    3    7    6
         3    10       5    3    6    5
 17      1     2       9    6    6    7
         2     3       6    5    5    5
         3     6       5    5    5    3
 18      1     3       7   10    8    7
         2     5       6    7    4    5
         3     9       2    4    2    3
 19      1     5       8    6    3    3
         2     5       8    4    2    4
         3     9       5    2    2    3
 20      1     6       2    3    7    7
         2     6       2    2    8    9
         3     7       2    2    4    3
 21      1     5       9   10    5    8
         2     7       9    6    3    6
         3    10       8    5    3    5
 22      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   20   21  110  111
************************************************************************
