************************************************************************
file with basedata            : md348_.bas
initial value random generator: 635871055
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  22
horizon                       :  167
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     20      0       26        7       26
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   7  11
   3        3          3           5  12  15
   4        3          3           8  13  17
   5        3          2           6  20
   6        3          1          19
   7        3          3           9  10  14
   8        3          2           9  10
   9        3          2          15  19
  10        3          1          16
  11        3          2          13  14
  12        3          3          14  16  17
  13        3          1          16
  14        3          2          18  21
  15        3          1          21
  16        3          2          20  21
  17        3          1          18
  18        3          2          19  20
  19        3          1          22
  20        3          1          22
  21        3          1          22
  22        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3      10    0    9    0
         2     8       0    5    7    0
         3     9       8    0    0    3
  3      1     4       0    8    0    2
         2     4       6    0    3    0
         3     5       4    0    0    2
  4      1     8       9    0    8    0
         2     8       0    1    7    0
         3    10       8    0    5    0
  5      1     1       0    7    7    0
         2     1       3    0    0    3
         3     2       2    0    0    3
  6      1     4       4    0    1    0
         2     6       0    9    1    0
         3     8       0    6    1    0
  7      1     1      10    0    0    9
         2     5       9    0    0    7
         3    10       7    0    3    0
  8      1     5       0    8    0    4
         2     7       8    0    0    4
         3    10       6    0    0    3
  9      1     6      10    0    6    0
         2     7       8    0    6    0
         3     8       7    0    5    0
 10      1     1       5    0    9    0
         2     9       0    6    9    0
         3    10       2    0    7    0
 11      1     1       4    0    9    0
         2     5       0    8    4    0
         3     6       0    6    4    0
 12      1     3       0    7    4    0
         2     3       6    0    3    0
         3    10       0    8    0    4
 13      1     5       5    0    6    0
         2     6       0    3    4    0
         3    10       5    0    3    0
 14      1     2       6    0    8    0
         2     7       0    6    5    0
         3    10       0    3    0    2
 15      1     3       0    6    0    5
         2     4       5    0    9    0
         3     9       5    0    0    2
 16      1     7       0    9    4    0
         2     9       0    3    0    5
         3     9       5    0    0   10
 17      1     3       0    3    4    0
         2     6       0    3    0   10
         3     6       3    0    3    0
 18      1     7       9    0    0    8
         2    10       0    6    6    0
         3    10       8    0    0    7
 19      1     6       0    7    0    6
         2     8       0    7    7    0
         3    10       8    0    6    0
 20      1     1       6    0    0    9
         2     7       6    0    3    0
         3     8       5    0    0    7
 21      1     4       0    1    0    1
         2     7       9    0    3    0
         3     7       8    0    0    1
 22      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   29   33  109   76
************************************************************************
