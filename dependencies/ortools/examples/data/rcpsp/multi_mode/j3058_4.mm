************************************************************************
file with basedata            : mf58_.bas
initial value random generator: 1650408251
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  32
horizon                       :  238
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     30      0       27        7       27
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           6  30
   3        3          3           5   7   8
   4        3          2           8  10
   5        3          2          11  16
   6        3          3          13  18  29
   7        3          3           9  12  27
   8        3          2          20  29
   9        3          3          10  18  30
  10        3          1          28
  11        3          3          13  15  21
  12        3          2          20  26
  13        3          2          14  20
  14        3          2          22  24
  15        3          3          19  24  25
  16        3          2          17  25
  17        3          2          19  23
  18        3          1          24
  19        3          1          22
  20        3          1          25
  21        3          2          22  23
  22        3          2          26  27
  23        3          3          27  28  30
  24        3          1          26
  25        3          1          31
  26        3          1          31
  27        3          1          31
  28        3          1          29
  29        3          1          32
  30        3          1          32
  31        3          1          32
  32        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       0    6    6    7
         2     1       5    0    6    7
         3     7       0    4    5    7
  3      1     2       0    7    8    6
         2     5       6    0    8    6
         3     6       5    0    7    6
  4      1     1       0    7    9    5
         2     2       7    0    6    3
         3     7       6    0    5    2
  5      1     1       8    0    4    6
         2     4       6    0    4    3
         3    10       4    0    3    2
  6      1     3       0    7    8    9
         2     9       0    7    7    7
         3    10       0    6    4    5
  7      1     6       9    0    2   10
         2     9       0    5    2    9
         3    10       8    0    2    9
  8      1     1       8    0    8    7
         2     3       5    0    5    6
         3     6       0    3    5    1
  9      1     1       8    0    7    8
         2     2       4    0    7    7
         3     4       3    0    5    4
 10      1     2       4    0    7    8
         2     4       0    7    7    6
         3     6       0    6    7    4
 11      1     5       1    0    9    7
         2    10       1    0    8    5
         3    10       1    0    7    6
 12      1     3       0    5    3    8
         2     8       0    4    3    5
         3     8       1    0    3    5
 13      1     3       2    0    5    6
         2     5       0    8    4    5
         3     8       0    8    4    3
 14      1     2       7    0    8    7
         2     5       7    0    7    6
         3     9       6    0    5    5
 15      1     4       0    3    5    3
         2     9       7    0    5    3
         3    10       0    3    5    2
 16      1     5       0    4    8    6
         2     5      10    0    9    6
         3     7       0    4    5    6
 17      1     2       6    0   10   10
         2     3       0    7    9    9
         3     4       0    6    9    8
 18      1     2       9    0    3    8
         2     4       6    0    3    8
         3     7       3    0    2    8
 19      1     7       0    4    4    7
         2     9       7    0    4    6
         3    10       0    2    3    6
 20      1     3       0    8    7    4
         2     7      10    0    5    4
         3    10       4    0    4    3
 21      1     2       0    6    8    8
         2     3      10    0    8    5
         3     6       7    0    8    2
 22      1     1       3    0    4    4
         2     1       0    6    4    4
         3     7       2    0    3    4
 23      1     3       0    6    5    9
         2     6       9    0    5    6
         3     6       0    4    4    7
 24      1     7       0    3    9    6
         2     8       0    2    7    6
         3    10       0    2    7    5
 25      1     6       9    0    6    6
         2     8       9    0    6    3
         3    10       0    5    5    3
 26      1     6      10    0    4    8
         2     6       0    7    4    9
         3    10      10    0    4    7
 27      1     5       8    0    5    3
         2     6       7    0    4    3
         3    10       0    5    4    1
 28      1     1       6    0    9    9
         2     3       0    1    7    5
         3     8       4    0    7    2
 29      1     2       0    8    2    4
         2     5       0    7    2    3
         3     6       0    6    1    3
 30      1     2       5    0   10    8
         2     4       3    0    6    7
         3     8       0    4    6    7
 31      1     1       0    7    8    8
         2     2       9    0    5    7
         3     8       0    5    3    3
 32      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   23   18  192  206
************************************************************************
