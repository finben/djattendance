jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 4 5 8 11 
2	9	5		14 12 10 9 6 
3	9	4		12 10 9 6 
4	9	3		9 7 6 
5	9	3		12 10 9 
6	9	6		23 20 18 17 15 13 
7	9	2		16 10 
8	9	7		24 23 22 20 18 16 15 
9	9	6		23 22 18 17 16 15 
10	9	4		20 18 17 13 
11	9	3		23 20 12 
12	9	4		31 22 18 17 
13	9	5		31 28 24 22 19 
14	9	4		31 28 26 19 
15	9	3		28 26 19 
16	9	3		31 28 19 
17	9	2		28 19 
18	9	5		29 28 27 26 25 
19	9	1		21 
20	9	6		45 32 31 29 28 27 
21	9	4		32 29 27 25 
22	9	4		45 30 29 26 
23	9	4		45 37 34 27 
24	9	3		45 32 27 
25	9	6		45 40 37 35 34 30 
26	9	6		51 43 38 35 33 32 
27	9	3		36 35 30 
28	9	3		40 37 30 
29	9	6		51 43 42 38 36 35 
30	9	4		51 43 38 33 
31	9	4		51 38 37 35 
32	9	2		39 36 
33	9	3		50 42 39 
34	9	3		50 43 42 
35	9	2		50 39 
36	9	2		50 40 
37	9	2		50 39 
38	9	2		50 41 
39	9	1		41 
40	9	1		41 
41	9	2		49 44 
42	9	2		49 44 
43	9	1		44 
44	9	3		48 47 46 
45	9	3		51 49 46 
46	9	1		52 
47	9	1		52 
48	9	1		52 
49	9	1		52 
50	9	1		52 
51	9	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	
2	1	2	2	5	20	14	
	2	7	1	4	19	14	
	3	13	1	4	19	13	
	4	13	1	3	18	14	
	5	14	1	3	16	14	
	6	15	1	3	15	14	
	7	17	1	2	15	14	
	8	21	1	2	13	14	
	9	30	1	2	13	13	
3	1	9	5	2	20	29	
	2	11	4	2	18	28	
	3	12	4	2	17	27	
	4	14	3	2	14	26	
	5	15	3	2	14	25	
	6	17	3	2	12	24	
	7	21	3	2	9	23	
	8	22	2	2	7	22	
	9	27	2	2	7	21	
4	1	3	4	5	28	15	
	2	4	3	4	25	15	
	3	5	3	3	24	14	
	4	6	3	3	24	13	
	5	7	3	2	22	10	
	6	12	3	2	19	10	
	7	13	3	1	19	9	
	8	18	3	1	16	7	
	9	29	3	1	15	6	
5	1	7	1	4	16	7	
	2	11	1	3	14	7	
	3	13	1	3	14	6	
	4	15	1	2	14	7	
	5	16	1	2	13	7	
	6	20	1	2	13	6	
	7	22	1	2	12	6	
	8	24	1	1	11	6	
	9	26	1	1	11	5	
6	1	1	3	4	19	4	
	2	2	2	3	18	3	
	3	8	2	3	14	3	
	4	9	2	3	13	3	
	5	12	2	2	11	2	
	6	16	2	2	10	2	
	7	18	2	2	6	2	
	8	19	2	2	4	2	
	9	28	2	2	4	1	
7	1	3	4	2	23	16	
	2	5	3	2	23	14	
	3	9	3	2	22	12	
	4	10	2	2	22	11	
	5	12	2	2	22	8	
	6	17	2	2	21	8	
	7	19	1	2	21	6	
	8	20	1	2	20	3	
	9	21	1	2	20	1	
8	1	6	1	2	14	15	
	2	7	1	1	12	13	
	3	12	1	1	11	13	
	4	16	1	1	9	11	
	5	17	1	1	8	11	
	6	19	1	1	8	8	
	7	23	1	1	6	8	
	8	27	1	1	4	6	
	9	28	1	1	3	5	
9	1	6	1	5	16	25	
	2	14	1	4	16	24	
	3	17	1	4	16	23	
	4	20	1	4	16	22	
	5	21	1	4	16	21	
	6	22	1	4	16	20	
	7	23	1	4	16	19	
	8	27	1	4	16	18	
	9	29	1	4	16	17	
10	1	1	4	3	12	26	
	2	1	4	2	11	27	
	3	2	4	2	11	26	
	4	11	4	2	11	25	
	5	19	4	2	10	25	
	6	20	4	1	10	25	
	7	22	4	1	9	25	
	8	24	4	1	9	24	
	9	29	4	1	9	23	
11	1	2	5	4	27	19	
	2	5	4	3	27	17	
	3	7	4	3	27	16	
	4	8	4	3	27	14	
	5	13	3	2	27	11	
	6	16	3	2	27	10	
	7	20	3	2	27	9	
	8	21	3	2	27	8	
	9	22	3	2	27	6	
12	1	3	3	4	16	28	
	2	4	3	3	15	27	
	3	11	3	3	14	24	
	4	12	3	3	14	23	
	5	21	2	2	13	21	
	6	25	2	2	11	17	
	7	26	1	2	10	17	
	8	27	1	2	9	13	
	9	29	1	2	9	12	
13	1	2	2	3	26	21	
	2	5	2	3	24	20	
	3	8	2	3	21	18	
	4	9	2	3	20	16	
	5	12	2	3	16	13	
	6	16	2	3	16	10	
	7	17	2	3	13	8	
	8	27	2	3	10	5	
	9	28	2	3	6	4	
14	1	1	5	1	24	13	
	2	2	4	1	23	13	
	3	11	4	1	23	12	
	4	17	3	1	23	13	
	5	19	3	1	22	13	
	6	21	2	1	22	13	
	7	22	1	1	22	13	
	8	26	1	1	22	12	
	9	28	1	1	22	11	
15	1	2	3	2	7	17	
	2	5	3	2	5	15	
	3	8	3	2	5	14	
	4	15	3	2	4	14	
	5	18	3	2	3	13	
	6	19	3	1	3	12	
	7	22	3	1	2	12	
	8	23	3	1	1	11	
	9	26	3	1	1	10	
16	1	4	5	1	25	19	
	2	7	5	1	24	16	
	3	8	5	1	24	14	
	4	14	5	1	24	11	
	5	15	5	1	24	9	
	6	19	5	1	23	9	
	7	20	5	1	23	5	
	8	26	5	1	23	4	
	9	30	5	1	23	3	
17	1	2	2	4	19	21	
	2	3	2	4	18	19	
	3	8	2	4	18	16	
	4	9	2	4	18	15	
	5	13	2	4	18	12	
	6	17	2	3	18	11	
	7	18	2	3	18	9	
	8	28	2	3	18	7	
	9	29	2	3	18	5	
18	1	1	3	3	23	9	
	2	2	3	3	23	8	
	3	6	3	3	23	7	
	4	8	3	3	23	6	
	5	20	3	3	23	5	
	6	22	2	3	22	8	
	7	23	2	3	22	7	
	8	24	2	3	22	6	
	9	25	2	3	22	5	
19	1	3	2	3	28	19	
	2	5	2	3	28	18	
	3	7	2	3	26	17	
	4	9	2	3	25	15	
	5	14	2	3	21	15	
	6	15	2	3	20	13	
	7	19	2	3	18	12	
	8	28	2	3	16	12	
	9	29	2	3	16	11	
20	1	1	2	2	29	17	
	2	2	2	2	28	17	
	3	4	2	2	28	15	
	4	12	2	2	28	14	
	5	13	2	2	27	14	
	6	16	2	1	27	13	
	7	17	2	1	26	11	
	8	19	2	1	26	10	
	9	29	2	1	26	9	
21	1	5	4	5	21	6	
	2	8	4	4	20	5	
	3	11	4	4	18	5	
	4	15	3	3	15	4	
	5	24	3	3	15	3	
	6	25	3	2	12	4	
	7	27	3	2	10	3	
	8	29	2	1	9	3	
	9	30	2	1	7	3	
22	1	2	4	2	21	28	
	2	5	4	2	21	27	
	3	6	4	2	20	26	
	4	10	3	2	20	25	
	5	13	2	2	18	24	
	6	16	2	1	18	23	
	7	19	1	1	17	22	
	8	23	1	1	17	19	
	9	24	1	1	16	18	
23	1	3	2	4	28	21	
	2	7	1	4	27	21	
	3	9	1	4	26	21	
	4	14	1	3	25	21	
	5	19	1	2	25	21	
	6	22	1	2	25	20	
	7	24	1	1	24	20	
	8	27	1	1	22	20	
	9	28	1	1	22	19	
24	1	6	4	4	20	28	
	2	8	3	4	19	25	
	3	9	3	4	19	24	
	4	12	3	3	19	21	
	5	15	2	3	18	19	
	6	21	2	3	18	18	
	7	22	2	3	17	15	
	8	28	2	2	16	14	
	9	29	2	2	16	12	
25	1	1	4	3	23	26	
	2	4	3	2	22	25	
	3	11	3	2	21	21	
	4	14	3	2	19	19	
	5	17	3	2	19	16	
	6	21	3	2	19	11	
	7	26	3	2	18	7	
	8	27	3	2	17	5	
	9	29	3	2	16	3	
26	1	4	4	2	10	22	
	2	7	3	1	9	22	
	3	13	3	1	9	21	
	4	16	3	1	9	20	
	5	17	2	1	9	19	
	6	21	2	1	8	18	
	7	25	2	1	8	17	
	8	26	1	1	8	17	
	9	29	1	1	8	16	
27	1	3	4	5	7	9	
	2	10	3	4	7	9	
	3	16	3	4	7	8	
	4	18	3	4	7	7	
	5	20	2	3	7	9	
	6	21	2	3	7	8	
	7	25	2	3	7	7	
	8	26	2	3	7	6	
	9	27	2	3	7	5	
28	1	1	5	1	22	22	
	2	5	4	1	22	17	
	3	9	4	1	22	15	
	4	10	4	1	21	14	
	5	15	3	1	21	12	
	6	20	3	1	21	9	
	7	21	3	1	21	8	
	8	22	2	1	20	5	
	9	26	2	1	20	3	
29	1	2	2	3	1	9	
	2	5	2	3	1	8	
	3	6	2	3	1	7	
	4	8	2	2	1	9	
	5	9	2	2	1	8	
	6	11	2	2	1	7	
	7	15	2	1	1	8	
	8	22	2	1	1	7	
	9	29	2	1	1	6	
30	1	3	5	1	3	28	
	2	12	4	1	3	23	
	3	13	4	1	3	22	
	4	14	3	1	3	17	
	5	15	3	1	2	17	
	6	16	3	1	2	15	
	7	17	3	1	2	10	
	8	20	2	1	2	7	
	9	27	2	1	2	6	
31	1	3	3	4	21	17	
	2	7	2	3	21	15	
	3	11	2	3	20	15	
	4	12	2	2	19	13	
	5	15	2	2	19	12	
	6	23	2	2	18	12	
	7	25	2	1	17	10	
	8	28	2	1	16	9	
	9	29	2	1	16	8	
32	1	1	4	5	16	27	
	2	2	4	4	16	25	
	3	5	4	4	15	25	
	4	7	4	4	13	24	
	5	13	3	3	13	23	
	6	16	3	3	12	22	
	7	19	2	2	10	21	
	8	25	2	2	9	21	
	9	29	2	2	9	20	
33	1	4	3	4	25	15	
	2	5	2	4	25	14	
	3	7	2	3	23	14	
	4	8	2	3	21	13	
	5	9	2	3	18	13	
	6	10	1	2	18	13	
	7	19	1	1	16	12	
	8	24	1	1	12	11	
	9	30	1	1	12	10	
34	1	6	4	2	23	9	
	2	7	4	1	22	7	
	3	8	4	1	22	6	
	4	10	4	1	22	5	
	5	18	4	1	21	4	
	6	20	4	1	21	3	
	7	22	4	1	20	2	
	8	24	4	1	20	1	
	9	29	4	1	19	1	
35	1	3	3	4	13	21	
	2	9	2	3	13	19	
	3	10	2	3	13	18	
	4	11	2	3	12	16	
	5	12	2	3	12	14	
	6	13	1	3	12	13	
	7	26	1	3	12	11	
	8	27	1	3	11	11	
	9	28	1	3	11	8	
36	1	1	3	3	26	20	
	2	6	3	3	25	19	
	3	7	3	3	25	18	
	4	8	3	3	25	17	
	5	10	2	2	25	16	
	6	20	2	2	25	15	
	7	21	2	2	25	14	
	8	22	2	2	25	13	
	9	30	2	2	25	12	
37	1	4	5	3	23	3	
	2	6	5	2	22	3	
	3	11	5	2	22	2	
	4	19	5	2	21	3	
	5	23	5	2	20	4	
	6	24	5	2	20	3	
	7	25	5	2	20	2	
	8	29	5	2	18	3	
	9	30	5	2	18	2	
38	1	2	4	4	26	15	
	2	9	4	4	23	13	
	3	10	4	4	21	13	
	4	11	4	4	20	12	
	5	15	4	4	18	11	
	6	16	3	3	14	11	
	7	19	3	3	11	10	
	8	20	3	3	10	9	
	9	21	3	3	8	8	
39	1	6	4	2	17	21	
	2	9	3	2	16	19	
	3	11	3	2	15	15	
	4	18	3	2	14	13	
	5	20	3	2	12	11	
	6	23	3	2	12	9	
	7	24	3	2	11	5	
	8	25	3	2	9	3	
	9	29	3	2	7	1	
40	1	1	4	4	19	22	
	2	3	3	4	18	22	
	3	5	3	4	18	21	
	4	15	3	4	18	20	
	5	17	2	4	17	22	
	6	18	2	4	16	22	
	7	20	2	4	16	21	
	8	26	2	4	15	22	
	9	27	2	4	15	21	
41	1	4	2	5	27	22	
	2	6	1	4	24	20	
	3	10	1	4	21	19	
	4	22	1	3	19	18	
	5	23	1	3	17	15	
	6	24	1	3	14	14	
	7	25	1	2	12	13	
	8	29	1	2	12	11	
	9	30	1	2	8	11	
42	1	4	4	5	22	28	
	2	5	3	4	22	24	
	3	10	3	4	22	21	
	4	12	3	4	21	19	
	5	13	3	3	20	16	
	6	23	2	3	20	14	
	7	27	2	3	19	11	
	8	28	2	3	19	10	
	9	30	2	3	19	7	
43	1	1	5	4	11	12	
	2	2	5	4	9	12	
	3	5	5	4	9	11	
	4	12	5	4	8	12	
	5	13	5	4	7	12	
	6	15	5	4	7	11	
	7	19	5	4	6	12	
	8	20	5	4	5	12	
	9	29	5	4	5	11	
44	1	5	3	4	23	23	
	2	6	3	3	21	22	
	3	11	3	3	20	21	
	4	12	3	3	19	20	
	5	15	3	3	18	20	
	6	19	3	3	17	20	
	7	20	3	3	17	19	
	8	22	3	3	16	19	
	9	29	3	3	15	18	
45	1	2	3	2	24	21	
	2	3	3	2	23	20	
	3	4	3	2	20	20	
	4	13	3	2	18	21	
	5	14	3	2	18	20	
	6	19	3	2	15	20	
	7	22	3	2	14	20	
	8	24	3	2	12	20	
	9	29	3	2	11	20	
46	1	1	5	2	10	28	
	2	2	4	1	9	26	
	3	4	4	1	9	25	
	4	16	4	1	9	24	
	5	22	4	1	9	23	
	6	23	3	1	9	23	
	7	26	3	1	9	22	
	8	27	3	1	9	21	
	9	29	3	1	9	20	
47	1	4	3	3	27	28	
	2	7	3	3	24	25	
	3	12	3	3	22	21	
	4	15	3	3	20	19	
	5	16	3	2	15	18	
	6	17	2	2	13	15	
	7	20	2	1	12	13	
	8	23	2	1	9	9	
	9	25	2	1	4	9	
48	1	3	5	4	24	26	
	2	6	4	4	23	25	
	3	7	4	4	21	23	
	4	8	3	4	18	23	
	5	13	2	3	16	22	
	6	14	2	3	12	20	
	7	17	2	3	10	20	
	8	19	1	3	8	18	
	9	23	1	3	6	18	
49	1	1	3	4	25	25	
	2	4	3	4	22	24	
	3	5	3	4	22	23	
	4	7	3	3	19	23	
	5	13	2	3	18	23	
	6	14	2	2	18	23	
	7	20	2	2	15	23	
	8	22	2	1	14	22	
	9	24	2	1	13	22	
50	1	1	2	5	7	16	
	2	2	2	4	7	15	
	3	3	2	4	7	14	
	4	12	2	3	7	15	
	5	20	2	3	7	14	
	6	23	2	2	6	15	
	7	25	2	2	6	14	
	8	26	2	1	6	15	
	9	28	2	1	6	14	
51	1	1	3	1	12	15	
	2	4	3	1	10	15	
	3	9	3	1	9	13	
	4	10	3	1	8	12	
	5	11	2	1	8	12	
	6	12	2	1	6	12	
	7	18	2	1	4	11	
	8	27	2	1	4	9	
	9	28	2	1	2	9	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	18	17	882	843

************************************************************************
