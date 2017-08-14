************************************************************************
file with basedata            : md285_.bas
initial value random generator: 2117119885
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  20
horizon                       :  150
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     18      0       26       14       26
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6   8  11
   3        3          3           5   8  15
   4        3          2           6  15
   5        3          3           7  10  11
   6        3          1           7
   7        3          1           9
   8        3          3          14  17  18
   9        3          2          12  13
  10        3          1          17
  11        3          2          13  14
  12        3          2          14  16
  13        3          1          16
  14        3          1          19
  15        3          2          18  19
  16        3          3          17  18  19
  17        3          1          20
  18        3          1          20
  19        3          1          20
  20        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     4       8    8    4    0
         2     4       8    7    0    2
         3     7       8    6    6    0
  3      1     1       3    7    0    3
         2     7       2    7    2    0
         3     9       2    6    2    0
  4      1     2       9    6    7    0
         2     4       6    6    0    5
         3     9       5    5    7    0
  5      1     3       9    6    0    6
         2     3       7    7    0    7
         3     9       2    4    6    0
  6      1     1       9   10    7    0
         2     8       9    8    0    7
         3    10       6    4    0    4
  7      1     3       6   10    9    0
         2     6       5   10    0    7
         3     7       5   10    2    0
  8      1     2      10    5    5    0
         2     8       8    3    5    0
         3     9       6    3    4    0
  9      1     1       5    5    0    5
         2     1       5    3   10    0
         3     1       4    7   10    0
 10      1     1       8    7    0    6
         2     6       7    7    0    4
         3    10       5    2    0    3
 11      1     1       2    3    7    0
         2     2       2    3    0    6
         3     8       2    3    4    0
 12      1     4       8    5    0    6
         2     5       6    4    4    0
         3    10       3    3    0    3
 13      1     2       6    8    0    8
         2     4       5    7    7    0
         3     7       4    7    0    6
 14      1     2       2    4    0    8
         2    10       2    3    0    3
         3    10       1    3    3    0
 15      1     2       8    9    0    9
         2     9       7    6    0    7
         3    10       7    6    7    0
 16      1     6      10    9    0    6
         2     8       9    9    9    0
         3     8       9    9    0    5
 17      1     7       6    7    0   10
         2     9       5    7    5    0
         3    10       2    6    0    9
 18      1     2      10    9    8    0
         2     3       9    9    6    0
         3     7       9    9    5    0
 19      1     6       2   10    6    0
         2     7       1    9    0    7
         3     9       1    7    0    6
 20      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   14   14  108  102
************************************************************************
