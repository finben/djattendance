************************************************************************
file with basedata            : cm551_.bas
initial value random generator: 596034222
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  145
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       14        5       14
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        5          3          11  12  17
   3        5          3           6   7   9
   4        5          2           5  14
   5        5          3          11  15  17
   6        5          2           8  10
   7        5          2          15  16
   8        5          2          12  13
   9        5          3          10  12  13
  10        5          2          11  14
  11        5          1          16
  12        5          1          15
  13        5          2          14  16
  14        5          1          17
  15        5          1          18
  16        5          1          18
  17        5          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1      10    0    9    4
         2     3       9    0    9    4
         3     4       8    0    8    3
         4     4       0    8    8    3
         5     8       8    0    7    1
  3      1     1       0    5    6    5
         2     1       9    0    6    5
         3     5       8    0    6    4
         4     7       5    0    6    4
         5    10       3    0    5    4
  4      1     1       0    3    3    4
         2     2       6    0    3    3
         3     3       0    1    3    3
         4     4       6    0    2    2
         5    10       5    0    2    2
  5      1     1       7    0    9    6
         2     2       5    0    8    5
         3     5       4    0    4    3
         4    10       0    5    2    1
         5    10       3    0    3    2
  6      1     5       0    6    7    9
         2     6       0    5    6    9
         3     6       5    0    7    9
         4     7       0    6    5    9
         5     9       0    5    4    8
  7      1     1       0    7    3    8
         2     4       0    6    2    6
         3     5       0    5    2    6
         4     6       0    2    2    4
         5    10       2    0    1    4
  8      1     1       0    9    8    6
         2     7       0    8    8    6
         3     8       0    7    7    6
         4     9       8    0    7    5
         5    10       0    5    7    4
  9      1     6       0    2    9    9
         2     6       7    0   10    8
         3     7       5    0    8    8
         4     7       0    2    9    8
         5     9       0    2    8    7
 10      1     4       0    7    5    6
         2     5       0    7    5    5
         3     7       2    0    5    5
         4     9       2    0    4    4
         5     9       0    4    3    5
 11      1     1      10    0    3    9
         2     2       0    5    3    9
         3     7       0    5    2    7
         4     9       4    0    2    7
         5     9       0    5    1    7
 12      1     4       0    9    3    9
         2     4       7    0    4    8
         3     5       0    9    3    4
         4     7       4    0    2    2
         5     7       0    7    2    4
 13      1     1       0    6    9    7
         2     3       8    0    9    6
         3     7       6    0    8    6
         4     7       0    6    9    5
         5    10       5    0    8    4
 14      1     2       0    4   10    5
         2     6       0    4    8    4
         3     9       0    3    8    4
         4     9       8    0    7    4
         5    10       0    4    6    4
 15      1     1       0    2    9    2
         2     2       0    1    9    2
         3     3       9    0    9    1
         4     4       6    0    9    1
         5     7       0    1    9    1
 16      1     1       5    0    6    3
         2     3       0    7    4    3
         3     3       5    0    5    3
         4     3       0    6    5    2
         5     8       0    6    3    2
 17      1     1       6    0    4    9
         2     3       0    4    3    7
         3     6       0    4    3    6
         4     7       5    0    3    4
         5     9       1    0    2    3
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   19   21   96   90
************************************************************************
