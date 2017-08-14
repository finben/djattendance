jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 5 6 9 12 
2	6	7		21 15 13 11 10 8 4 
3	6	6		24 23 16 14 13 7 
4	6	8		25 24 23 22 20 18 17 16 
5	6	7		25 24 23 20 19 16 14 
6	6	7		36 31 24 22 21 20 17 
7	6	3		31 22 11 
8	6	6		39 31 30 22 19 17 
9	6	4		34 20 17 16 
10	6	5		39 36 31 18 17 
11	6	5		34 28 25 20 17 
12	6	7		42 39 32 29 28 27 20 
13	6	10		51 50 43 38 37 34 32 29 26 25 
14	6	6		33 32 29 27 26 21 
15	6	6		50 32 30 29 27 19 
16	6	10		51 50 39 38 37 36 33 32 31 30 
17	6	7		50 42 33 32 29 27 26 
18	6	6		43 42 38 32 30 28 
19	6	9		51 49 47 42 41 40 38 35 33 
20	6	8		51 50 49 41 38 37 35 33 
21	6	7		51 43 42 40 37 35 28 
22	6	6		48 43 40 38 34 28 
23	6	6		51 42 38 37 32 30 
24	6	5		49 42 40 30 28 
25	6	6		47 42 41 40 36 35 
26	6	5		49 47 45 41 35 
27	6	4		51 45 40 37 
28	6	5		50 47 46 45 41 
29	6	5		49 47 46 45 40 
30	6	4		48 46 45 41 
31	6	4		48 46 42 40 
32	6	3		49 45 40 
33	6	3		46 44 43 
34	6	3		49 45 42 
35	6	3		48 46 44 
36	6	3		49 48 45 
37	6	2		47 46 
38	6	2		45 44 
39	6	2		45 44 
40	6	1		44 
41	6	1		44 
42	6	1		44 
43	6	1		45 
44	6	1		52 
45	6	1		52 
46	6	1		52 
47	6	1		52 
48	6	1		52 
49	6	1		52 
50	6	1		52 
51	6	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	1	1	3	19	7	12	19	
	2	4	1	3	18	7	10	17	
	3	10	1	3	16	7	9	13	
	4	14	1	3	14	7	8	13	
	5	15	1	3	12	7	7	9	
	6	19	1	3	11	7	7	7	
3	1	9	5	1	10	14	14	18	
	2	11	4	1	8	12	11	18	
	3	13	4	1	6	10	9	16	
	4	14	4	1	6	9	8	15	
	5	15	4	1	2	8	5	15	
	6	18	4	1	1	8	2	13	
4	1	4	3	3	14	8	12	18	
	2	5	3	3	13	8	10	17	
	3	11	3	3	12	8	9	15	
	4	17	2	2	12	7	7	11	
	5	18	2	1	11	7	5	9	
	6	19	2	1	9	7	1	8	
5	1	3	5	4	13	19	13	10	
	2	8	4	4	13	15	12	10	
	3	13	4	4	10	15	11	10	
	4	17	3	4	8	13	11	10	
	5	18	2	4	5	11	8	10	
	6	19	2	4	3	10	8	10	
6	1	5	4	3	19	16	11	7	
	2	11	3	2	19	14	9	6	
	3	12	3	2	19	13	8	6	
	4	15	2	2	19	12	7	6	
	5	19	1	2	19	12	4	5	
	6	20	1	2	19	11	3	5	
7	1	5	3	5	20	9	10	10	
	2	6	2	4	19	9	10	9	
	3	7	2	4	19	8	10	9	
	4	13	2	3	19	7	9	9	
	5	19	2	3	18	6	9	7	
	6	20	2	3	18	5	8	7	
8	1	2	3	5	17	19	17	9	
	2	5	3	4	14	19	17	8	
	3	9	3	4	14	19	14	8	
	4	15	2	3	8	18	13	8	
	5	17	2	3	5	18	12	8	
	6	18	2	3	5	17	11	8	
9	1	3	1	1	17	15	18	4	
	2	6	1	1	16	13	16	4	
	3	9	1	1	15	11	15	4	
	4	14	1	1	13	10	13	3	
	5	16	1	1	11	7	10	3	
	6	18	1	1	10	6	9	3	
10	1	3	3	4	12	6	18	12	
	2	5	3	4	11	6	15	10	
	3	9	3	4	9	6	13	9	
	4	12	3	4	7	5	11	7	
	5	15	3	4	7	5	8	4	
	6	19	3	4	5	5	8	1	
11	1	5	3	5	6	16	16	19	
	2	7	2	5	5	15	14	16	
	3	15	2	5	4	15	13	12	
	4	16	1	5	4	15	10	9	
	5	17	1	5	3	14	10	6	
	6	20	1	5	3	14	7	3	
12	1	4	4	4	15	12	16	19	
	2	7	3	4	15	11	16	15	
	3	10	3	3	15	8	16	14	
	4	15	2	2	14	5	16	9	
	5	16	2	2	14	5	16	6	
	6	17	1	1	13	1	16	6	
13	1	2	3	2	10	8	6	14	
	2	3	2	2	9	7	6	14	
	3	4	2	2	7	7	6	14	
	4	11	2	2	7	7	5	13	
	5	17	2	2	4	6	5	12	
	6	20	2	2	2	6	5	12	
14	1	7	5	5	19	16	14	20	
	2	12	4	4	18	13	12	16	
	3	13	3	3	17	12	11	14	
	4	14	2	3	17	11	10	14	
	5	18	1	3	16	10	8	11	
	6	20	1	2	16	9	8	8	
15	1	4	2	3	15	8	19	13	
	2	5	2	3	13	7	17	13	
	3	6	2	3	13	7	14	11	
	4	10	2	3	12	7	12	9	
	5	12	2	2	11	7	11	8	
	6	15	2	2	11	7	9	7	
16	1	6	2	4	9	16	15	18	
	2	8	1	4	9	13	14	18	
	3	9	1	4	6	12	12	16	
	4	10	1	4	4	10	11	15	
	5	12	1	4	4	9	11	15	
	6	15	1	4	1	9	9	14	
17	1	1	3	4	2	6	9	20	
	2	2	3	4	2	6	8	16	
	3	7	3	4	2	5	8	14	
	4	9	2	3	1	3	7	12	
	5	10	2	3	1	3	7	9	
	6	12	2	3	1	2	6	8	
18	1	9	2	2	5	19	11	20	
	2	10	1	2	3	17	11	18	
	3	11	1	2	3	13	9	17	
	4	15	1	2	3	12	7	17	
	5	19	1	2	2	10	5	16	
	6	20	1	2	1	7	5	14	
19	1	4	4	3	14	10	15	6	
	2	6	4	3	12	9	15	5	
	3	9	4	3	12	8	15	3	
	4	11	4	3	10	6	15	2	
	5	16	4	3	10	5	15	1	
	6	19	4	3	9	4	15	1	
20	1	4	3	3	16	16	18	5	
	2	8	3	2	15	14	16	5	
	3	9	3	2	15	12	11	5	
	4	10	3	1	15	9	9	5	
	5	14	3	1	14	7	7	5	
	6	16	3	1	14	5	6	5	
21	1	2	3	3	5	11	11	8	
	2	5	2	3	5	8	9	6	
	3	7	2	2	5	8	8	6	
	4	10	2	2	5	6	7	4	
	5	11	1	1	5	5	3	3	
	6	12	1	1	5	4	3	3	
22	1	7	4	5	18	18	10	13	
	2	9	4	4	16	17	10	11	
	3	10	4	4	16	15	8	10	
	4	11	4	4	12	11	8	9	
	5	12	4	4	11	10	7	8	
	6	15	4	4	10	9	6	6	
23	1	4	4	1	13	14	10	4	
	2	5	4	1	13	14	9	4	
	3	15	4	1	13	13	9	4	
	4	18	4	1	13	10	9	4	
	5	19	4	1	13	10	9	3	
	6	20	4	1	13	9	9	3	
24	1	4	4	5	11	11	20	19	
	2	5	3	5	9	9	19	16	
	3	6	2	5	8	8	18	15	
	4	12	2	5	7	5	16	12	
	5	14	1	5	6	4	16	12	
	6	19	1	5	4	2	15	10	
25	1	8	3	3	6	17	14	10	
	2	9	3	3	5	13	12	10	
	3	10	2	2	4	12	12	8	
	4	17	2	2	3	9	8	7	
	5	18	1	1	2	5	7	7	
	6	19	1	1	2	2	6	6	
26	1	2	4	3	18	18	16	8	
	2	3	3	2	16	18	14	7	
	3	4	3	2	15	18	13	7	
	4	5	3	2	15	18	12	7	
	5	12	3	2	14	18	9	6	
	6	18	3	2	13	18	9	6	
27	1	2	3	5	10	6	16	20	
	2	3	3	4	10	6	13	14	
	3	6	3	4	6	5	13	10	
	4	9	3	3	6	3	11	10	
	5	14	3	3	3	2	10	4	
	6	17	3	2	1	2	7	4	
28	1	1	4	4	8	10	17	18	
	2	3	4	4	7	9	17	18	
	3	5	4	4	6	9	17	17	
	4	11	4	4	4	8	17	17	
	5	12	4	4	3	8	17	16	
	6	20	4	4	2	7	17	15	
29	1	3	5	3	1	12	15	19	
	2	7	4	3	1	9	13	13	
	3	9	4	3	1	7	12	11	
	4	10	4	3	1	7	12	7	
	5	11	3	3	1	5	10	4	
	6	12	3	3	1	2	10	4	
30	1	1	5	4	15	18	12	15	
	2	6	5	3	14	17	11	16	
	3	7	5	3	14	17	11	15	
	4	14	5	2	14	16	11	15	
	5	18	5	1	14	15	11	15	
	6	19	5	1	14	15	11	14	
31	1	2	5	5	18	15	12	12	
	2	3	3	4	14	14	11	11	
	3	5	3	4	11	13	11	10	
	4	9	2	4	8	12	8	10	
	5	10	1	4	7	11	7	9	
	6	11	1	4	5	10	6	7	
32	1	2	3	4	8	1	20	8	
	2	9	2	3	8	1	19	7	
	3	14	2	3	6	1	19	5	
	4	15	1	3	6	1	18	4	
	5	16	1	3	4	1	18	4	
	6	17	1	3	3	1	17	3	
33	1	9	4	1	8	5	4	20	
	2	12	4	1	7	4	3	19	
	3	14	4	1	6	4	3	19	
	4	16	4	1	4	4	2	19	
	5	17	4	1	3	4	2	19	
	6	18	4	1	2	4	2	19	
34	1	8	5	1	16	12	16	5	
	2	12	4	1	14	12	15	4	
	3	13	4	1	13	10	15	4	
	4	14	4	1	10	9	14	4	
	5	15	4	1	8	9	14	2	
	6	19	4	1	7	8	13	2	
35	1	2	5	4	15	17	20	8	
	2	7	4	3	15	15	17	8	
	3	8	4	2	12	15	17	7	
	4	9	3	2	10	13	16	7	
	5	10	3	2	10	12	13	6	
	6	18	2	1	8	11	12	6	
36	1	1	2	5	13	9	8	16	
	2	6	2	4	12	7	8	14	
	3	14	2	3	10	6	8	10	
	4	16	2	3	8	4	8	7	
	5	17	2	2	5	4	7	5	
	6	20	2	2	4	2	7	3	
37	1	7	3	2	8	9	13	18	
	2	12	3	2	7	8	12	15	
	3	13	3	2	7	8	8	13	
	4	14	3	2	5	7	6	12	
	5	15	3	2	5	6	4	10	
	6	17	3	2	4	5	4	7	
38	1	2	4	1	16	14	8	20	
	2	3	4	1	15	11	8	19	
	3	4	4	1	10	10	8	19	
	4	5	4	1	7	8	8	19	
	5	9	4	1	7	5	8	18	
	6	14	4	1	4	4	8	18	
39	1	1	4	1	18	3	18	10	
	2	5	4	1	16	2	16	8	
	3	6	3	1	14	2	12	7	
	4	12	3	1	13	2	9	6	
	5	16	3	1	11	1	7	5	
	6	18	2	1	9	1	6	5	
40	1	7	3	4	2	4	14	16	
	2	9	3	3	2	3	13	14	
	3	11	3	3	2	3	13	13	
	4	13	3	3	2	3	13	8	
	5	15	3	3	2	3	13	6	
	6	19	3	3	2	3	13	4	
41	1	1	1	2	17	8	15	6	
	2	5	1	2	17	8	12	6	
	3	8	1	2	17	8	10	6	
	4	9	1	2	17	8	9	6	
	5	13	1	1	17	8	6	6	
	6	20	1	1	17	8	4	6	
42	1	3	4	3	5	18	18	19	
	2	5	4	3	4	18	16	16	
	3	13	4	3	3	17	16	12	
	4	14	3	3	3	16	15	9	
	5	16	3	3	2	15	14	5	
	6	20	3	3	2	14	14	3	
43	1	1	4	2	17	19	13	1	
	2	11	4	1	15	16	10	1	
	3	13	4	1	14	12	9	1	
	4	16	4	1	12	9	8	1	
	5	17	4	1	11	9	5	1	
	6	18	4	1	11	6	3	1	
44	1	1	2	3	13	10	14	19	
	2	2	2	3	13	7	13	18	
	3	4	2	2	12	5	13	17	
	4	5	2	2	11	4	11	17	
	5	9	1	1	9	2	11	17	
	6	17	1	1	9	2	10	16	
45	1	4	5	3	15	6	14	8	
	2	5	4	3	13	4	14	8	
	3	11	4	3	9	3	14	6	
	4	15	4	3	8	2	13	4	
	5	16	3	3	4	1	13	4	
	6	18	3	3	3	1	13	2	
46	1	1	2	3	15	9	7	16	
	2	2	2	3	11	8	6	16	
	3	4	2	3	11	7	6	16	
	4	11	2	2	6	7	3	15	
	5	13	2	2	4	6	3	15	
	6	15	2	2	3	5	2	15	
47	1	5	5	2	20	12	12	17	
	2	9	5	2	17	12	11	15	
	3	10	5	2	16	12	11	13	
	4	13	5	2	15	12	9	12	
	5	15	5	2	14	11	8	9	
	6	18	5	2	11	11	8	7	
48	1	2	4	4	4	8	16	10	
	2	4	3	3	4	8	15	9	
	3	11	3	3	4	8	15	8	
	4	13	3	2	3	8	12	7	
	5	14	3	2	3	8	12	6	
	6	20	3	2	3	8	11	6	
49	1	1	3	2	13	19	18	9	
	2	2	2	2	12	18	15	9	
	3	4	2	2	12	18	15	8	
	4	6	2	2	11	18	11	8	
	5	9	1	2	11	17	10	8	
	6	15	1	2	11	16	8	8	
50	1	3	3	4	11	19	13	18	
	2	5	3	3	11	19	12	15	
	3	12	3	3	11	19	9	13	
	4	14	3	3	11	18	7	12	
	5	16	3	3	11	18	6	8	
	6	17	3	3	11	18	3	8	
51	1	5	3	4	7	17	16	12	
	2	7	3	4	7	16	15	9	
	3	9	2	4	7	14	14	8	
	4	10	2	3	6	12	14	8	
	5	11	1	3	6	12	13	7	
	6	12	1	3	6	9	12	5	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	23	22	484	483	553	513

************************************************************************
