jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	9		2 3 4 5 6 8 11 15 19 
2	9	9		25 23 22 21 18 13 10 9 7 
3	9	10		36 28 27 26 23 22 21 20 18 17 
4	9	9		33 28 26 25 22 21 17 16 14 
5	9	6		33 30 23 21 16 12 
6	9	6		36 33 31 30 23 17 
7	9	4		32 28 17 16 
8	9	5		36 32 31 28 17 
9	9	5		35 33 31 27 17 
10	9	10		50 42 38 37 36 34 33 32 31 29 
11	9	6		44 37 36 33 32 24 
12	9	5		37 36 32 31 24 
13	9	2		32 16 
14	9	5		44 37 36 35 24 
15	9	2		35 17 
16	9	8		50 42 38 37 36 34 31 29 
17	9	3		44 37 24 
18	9	3		37 33 24 
19	9	3		37 35 24 
20	9	8		51 50 44 42 38 35 34 29 
21	9	7		51 50 44 42 34 32 29 
22	9	6		50 49 38 34 30 29 
23	9	8		51 50 44 42 39 38 35 34 
24	9	7		51 50 49 42 38 34 29 
25	9	5		51 50 42 35 29 
26	9	8		51 50 49 42 40 39 37 34 
27	9	6		50 49 44 43 40 34 
28	9	5		51 43 38 37 35 
29	9	5		48 47 43 40 39 
30	9	3		42 40 37 
31	9	4		51 49 44 41 
32	9	2		45 35 
33	9	2		40 39 
34	9	3		48 47 41 
35	9	3		49 47 40 
36	9	3		48 46 41 
37	9	3		48 47 45 
38	9	2		46 45 
39	9	1		41 
40	9	1		46 
41	9	1		45 
42	9	1		46 
43	9	1		45 
44	9	1		46 
45	9	1		52 
46	9	1		52 
47	9	1		52 
48	9	1		52 
49	9	1		52 
50	9	1		52 
51	9	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	10	4	4	4	3	25	14	26	19	
	2	18	4	4	4	2	24	14	24	17	
	3	20	4	4	4	2	23	13	24	14	
	4	21	4	4	3	2	22	11	24	14	
	5	22	4	4	2	2	20	9	22	12	
	6	23	4	3	2	2	18	9	22	9	
	7	24	4	3	1	2	16	7	21	9	
	8	25	4	3	1	2	13	5	21	5	
	9	27	4	3	1	2	12	5	20	5	
3	1	4	4	2	3	2	5	16	15	13	
	2	5	4	2	3	2	4	14	13	13	
	3	8	4	2	3	2	4	13	11	13	
	4	12	3	2	2	2	4	13	11	13	
	5	13	2	2	2	2	4	12	9	12	
	6	14	2	2	2	1	4	11	8	12	
	7	21	1	2	1	1	4	10	7	12	
	8	25	1	2	1	1	4	10	5	11	
	9	30	1	2	1	1	4	9	4	11	
4	1	2	1	4	5	4	26	23	13	20	
	2	3	1	4	4	4	24	22	12	17	
	3	5	1	4	3	4	22	22	12	16	
	4	9	1	4	3	3	20	21	11	15	
	5	20	1	4	2	3	17	21	11	14	
	6	22	1	4	2	3	17	20	11	13	
	7	23	1	4	1	2	14	20	10	13	
	8	25	1	4	1	2	11	18	9	12	
	9	26	1	4	1	2	11	18	9	11	
5	1	3	2	3	2	3	6	2	22	28	
	2	4	2	3	2	3	5	2	21	28	
	3	6	2	3	2	3	5	2	20	26	
	4	10	2	3	2	3	4	2	20	26	
	5	12	2	2	2	3	4	2	20	24	
	6	16	2	2	2	3	3	2	19	23	
	7	18	2	2	2	3	3	2	18	22	
	8	22	2	2	2	3	2	2	18	19	
	9	27	2	2	2	3	2	2	18	18	
6	1	2	5	3	4	4	14	23	10	22	
	2	3	4	2	4	3	14	23	10	22	
	3	4	4	2	4	3	14	20	10	22	
	4	9	4	2	4	2	14	15	10	22	
	5	15	4	2	4	2	14	13	10	21	
	6	16	4	2	4	2	14	10	10	21	
	7	27	4	2	4	1	14	7	10	21	
	8	28	4	2	4	1	14	6	10	21	
	9	29	4	2	4	1	14	4	10	21	
7	1	3	3	2	2	4	6	16	21	28	
	2	4	3	1	2	4	5	15	17	26	
	3	5	3	1	2	4	5	14	14	25	
	4	6	3	1	2	4	5	12	12	24	
	5	20	3	1	2	4	3	12	9	24	
	6	21	3	1	2	3	3	11	9	24	
	7	23	3	1	2	3	2	8	7	22	
	8	26	3	1	2	3	2	8	4	22	
	9	28	3	1	2	3	1	7	2	21	
8	1	5	2	5	3	3	16	29	27	17	
	2	9	1	4	3	3	14	28	22	17	
	3	11	1	4	3	3	14	28	22	16	
	4	13	1	4	3	3	13	28	20	17	
	5	21	1	4	3	3	11	28	15	16	
	6	24	1	4	3	2	11	28	13	16	
	7	26	1	4	3	2	10	28	12	16	
	8	27	1	4	3	2	9	28	10	16	
	9	29	1	4	3	2	8	28	6	16	
9	1	1	4	4	4	3	20	26	25	19	
	2	3	3	4	4	2	20	25	23	16	
	3	4	3	4	4	2	20	25	22	15	
	4	11	3	4	4	2	20	25	21	14	
	5	12	3	3	4	2	20	25	20	14	
	6	15	3	3	4	1	19	25	17	13	
	7	16	3	2	4	1	19	25	15	11	
	8	19	3	2	4	1	19	25	14	10	
	9	28	3	2	4	1	19	25	13	10	
10	1	1	3	3	3	5	17	24	22	12	
	2	2	3	3	3	4	15	23	21	11	
	3	13	3	3	3	4	15	21	20	9	
	4	21	3	3	3	3	15	18	19	8	
	5	22	3	3	3	3	13	17	19	7	
	6	23	3	3	3	3	13	15	18	7	
	7	24	3	3	3	3	13	15	18	5	
	8	27	3	3	3	2	11	13	18	4	
	9	30	3	3	3	2	11	11	17	3	
11	1	6	5	5	3	1	13	14	26	20	
	2	7	4	5	3	1	13	14	24	16	
	3	12	3	5	3	1	12	12	21	15	
	4	15	3	5	3	1	12	11	21	12	
	5	17	3	5	3	1	12	10	17	10	
	6	21	2	5	3	1	11	10	15	10	
	7	22	1	5	3	1	10	9	13	7	
	8	24	1	5	3	1	10	7	11	6	
	9	25	1	5	3	1	10	7	7	2	
12	1	2	5	2	5	5	7	19	26	8	
	2	3	4	2	4	4	6	18	23	7	
	3	5	4	2	4	4	6	17	23	5	
	4	6	4	2	3	4	5	14	20	4	
	5	18	4	2	3	4	5	14	17	4	
	6	19	4	2	3	4	4	12	13	3	
	7	25	4	2	2	4	3	11	12	2	
	8	27	4	2	2	4	3	8	8	2	
	9	29	4	2	2	4	3	6	5	1	
13	1	1	4	2	3	4	16	25	19	25	
	2	2	4	2	3	3	13	21	18	24	
	3	13	3	2	3	3	13	17	17	24	
	4	14	3	2	3	3	11	17	17	24	
	5	15	2	2	3	2	10	15	15	24	
	6	17	2	2	3	2	9	10	14	23	
	7	24	2	2	3	2	6	10	12	23	
	8	28	1	2	3	2	4	5	11	23	
	9	29	1	2	3	2	3	5	10	23	
14	1	1	4	4	4	5	8	23	7	16	
	2	2	4	3	4	4	7	22	7	15	
	3	3	4	3	4	4	7	21	7	14	
	4	4	4	3	3	4	6	20	6	12	
	5	6	4	3	2	3	5	20	6	12	
	6	14	4	2	2	3	4	20	6	12	
	7	16	4	2	1	3	3	19	6	10	
	8	20	4	2	1	3	3	18	5	9	
	9	27	4	2	1	3	2	18	5	9	
15	1	1	1	4	4	4	24	10	25	28	
	2	2	1	4	4	3	20	8	20	26	
	3	4	1	4	4	3	18	8	18	26	
	4	9	1	3	3	3	15	7	15	23	
	5	16	1	3	3	3	13	7	14	23	
	6	22	1	3	3	2	12	6	12	20	
	7	23	1	2	2	2	10	6	7	18	
	8	25	1	2	2	2	7	5	5	17	
	9	29	1	2	2	2	5	5	3	16	
16	1	5	4	5	2	3	8	23	27	29	
	2	8	4	4	1	2	7	20	27	26	
	3	10	4	4	1	2	7	19	27	21	
	4	11	4	3	1	2	6	17	27	19	
	5	12	4	3	1	2	6	15	26	17	
	6	14	4	3	1	1	6	13	26	13	
	7	18	4	2	1	1	5	12	26	10	
	8	23	4	2	1	1	4	8	26	5	
	9	30	4	2	1	1	4	8	26	4	
17	1	6	4	4	5	4	7	24	29	24	
	2	7	3	3	4	4	7	22	25	22	
	3	10	3	3	4	4	7	22	22	21	
	4	11	3	3	4	4	6	19	18	20	
	5	12	3	3	3	4	6	15	18	18	
	6	17	3	3	3	4	6	13	14	16	
	7	26	3	3	2	4	5	11	13	15	
	8	27	3	3	2	4	5	8	7	11	
	9	28	3	3	2	4	5	8	7	10	
18	1	3	3	5	5	4	19	22	20	19	
	2	5	3	5	4	4	18	19	19	17	
	3	6	3	5	4	4	16	17	19	16	
	4	13	3	5	4	3	15	16	19	15	
	5	22	3	5	3	3	14	13	19	15	
	6	23	3	5	3	3	13	13	19	13	
	7	24	3	5	3	2	12	10	19	12	
	8	26	3	5	3	2	12	8	19	11	
	9	27	3	5	3	2	11	7	19	11	
19	1	4	5	3	4	4	12	29	5	29	
	2	5	4	3	3	3	12	27	4	29	
	3	7	4	3	3	3	10	26	4	29	
	4	8	4	3	3	3	9	24	4	28	
	5	9	3	3	3	2	8	23	4	28	
	6	12	3	3	3	2	7	22	3	28	
	7	17	3	3	3	2	6	22	3	27	
	8	24	3	3	3	2	4	20	3	27	
	9	25	3	3	3	2	4	20	3	26	
20	1	6	2	3	5	4	7	20	26	27	
	2	7	1	2	4	3	7	18	24	26	
	3	8	1	2	4	3	7	17	23	26	
	4	12	1	2	4	3	6	14	22	24	
	5	15	1	1	4	3	6	13	20	23	
	6	16	1	1	4	3	5	10	20	22	
	7	17	1	1	4	3	4	8	19	22	
	8	18	1	1	4	3	4	7	18	21	
	9	24	1	1	4	3	4	5	17	20	
21	1	4	4	3	5	4	29	14	25	23	
	2	5	4	2	5	4	24	13	24	22	
	3	6	3	2	5	4	23	13	22	17	
	4	10	3	2	5	4	22	12	19	16	
	5	11	2	2	5	4	18	10	15	11	
	6	16	2	2	5	4	17	10	13	10	
	7	21	2	2	5	4	14	9	10	9	
	8	28	1	2	5	4	11	7	8	4	
	9	29	1	2	5	4	9	6	6	2	
22	1	3	5	4	5	4	17	28	16	11	
	2	8	4	4	4	4	13	27	16	10	
	3	13	4	4	4	3	12	26	16	10	
	4	15	4	4	4	3	10	26	16	10	
	5	16	3	4	4	3	9	25	16	9	
	6	17	3	4	4	2	8	24	15	9	
	7	21	2	4	4	1	6	23	15	8	
	8	22	2	4	4	1	4	22	15	8	
	9	26	2	4	4	1	1	22	15	7	
23	1	8	4	5	1	4	21	24	24	20	
	2	10	4	4	1	4	20	22	20	18	
	3	11	4	4	1	4	20	21	19	16	
	4	12	4	4	1	4	20	18	19	13	
	5	15	4	4	1	3	20	17	17	12	
	6	23	4	3	1	3	19	16	14	8	
	7	25	4	3	1	2	19	15	14	7	
	8	26	4	3	1	2	19	13	12	4	
	9	27	4	3	1	2	19	11	9	4	
24	1	3	4	4	2	4	18	11	17	8	
	2	7	3	4	2	4	18	10	17	7	
	3	9	3	4	2	3	18	10	17	6	
	4	12	3	3	2	3	18	9	17	6	
	5	20	3	3	2	2	17	7	17	4	
	6	23	2	3	1	2	17	7	17	4	
	7	24	2	3	1	1	17	5	17	3	
	8	25	2	2	1	1	17	4	17	3	
	9	26	2	2	1	1	17	3	17	2	
25	1	2	2	4	4	5	23	3	30	24	
	2	4	2	4	3	5	21	2	27	24	
	3	9	2	4	3	5	20	2	23	22	
	4	10	2	3	3	5	18	2	21	19	
	5	13	1	3	2	5	18	1	16	17	
	6	22	1	2	2	5	16	1	15	16	
	7	24	1	1	2	5	15	1	12	15	
	8	25	1	1	1	5	13	1	9	13	
	9	26	1	1	1	5	12	1	7	11	
26	1	1	5	4	4	5	21	21	24	5	
	2	6	5	4	4	5	19	20	24	4	
	3	8	5	4	4	5	19	20	24	3	
	4	9	5	4	4	5	18	19	23	4	
	5	12	5	4	4	5	16	18	22	4	
	6	18	5	4	4	5	15	16	22	4	
	7	22	5	4	4	5	14	14	22	4	
	8	24	5	4	4	5	12	13	21	4	
	9	26	5	4	4	5	12	12	21	4	
27	1	1	3	4	1	2	10	28	29	20	
	2	5	3	3	1	2	10	27	29	20	
	3	10	3	3	1	2	9	26	29	18	
	4	16	3	3	1	2	8	26	29	16	
	5	19	3	3	1	2	7	25	29	14	
	6	20	3	3	1	2	7	24	29	11	
	7	22	3	3	1	2	6	23	29	10	
	8	28	3	3	1	2	6	23	29	7	
	9	29	3	3	1	2	5	22	29	5	
28	1	1	2	3	4	3	2	2	7	26	
	2	10	1	3	4	3	2	2	6	24	
	3	11	1	3	4	3	2	2	6	23	
	4	19	1	3	4	3	2	2	6	20	
	5	20	1	3	4	2	2	2	5	20	
	6	26	1	3	3	2	1	2	5	17	
	7	27	1	3	3	1	1	2	5	14	
	8	28	1	3	3	1	1	2	5	12	
	9	29	1	3	3	1	1	2	5	11	
29	1	1	4	4	2	3	22	13	26	30	
	2	2	4	4	1	3	20	12	21	29	
	3	7	4	4	1	3	17	11	18	29	
	4	8	4	4	1	3	15	11	17	29	
	5	15	4	4	1	3	14	10	14	28	
	6	17	3	4	1	3	13	10	12	28	
	7	21	3	4	1	3	12	10	7	27	
	8	24	3	4	1	3	10	9	6	27	
	9	25	3	4	1	3	7	9	3	27	
30	1	2	4	5	4	5	12	15	20	29	
	2	5	3	4	3	4	12	14	18	29	
	3	6	3	4	3	3	11	13	16	29	
	4	7	2	4	3	3	10	12	16	29	
	5	9	2	4	3	2	8	11	15	28	
	6	10	2	4	2	2	6	8	12	28	
	7	17	2	4	2	1	6	7	12	28	
	8	18	1	4	2	1	3	6	10	28	
	9	24	1	4	2	1	2	6	10	28	
31	1	5	4	2	3	4	20	29	14	11	
	2	6	3	1	3	4	19	28	11	10	
	3	16	3	1	3	4	18	28	10	10	
	4	17	3	1	3	4	17	28	10	10	
	5	18	2	1	2	4	17	28	8	10	
	6	19	2	1	2	3	16	28	7	10	
	7	22	2	1	1	3	16	28	6	10	
	8	23	2	1	1	3	15	28	4	10	
	9	24	2	1	1	3	14	28	2	10	
32	1	4	4	4	3	1	9	23	12	21	
	2	4	4	4	3	1	8	22	10	22	
	3	5	4	4	3	1	8	22	10	21	
	4	6	4	4	3	1	8	21	9	21	
	5	15	4	4	3	1	8	21	8	21	
	6	20	4	3	3	1	7	21	6	21	
	7	21	4	3	3	1	7	20	5	22	
	8	22	4	3	3	1	7	20	5	21	
	9	24	4	3	3	1	7	20	4	21	
33	1	9	3	5	2	4	23	24	22	20	
	2	10	3	4	2	3	21	24	21	19	
	3	16	3	4	2	3	19	24	19	19	
	4	17	3	3	2	3	19	23	18	19	
	5	21	3	3	2	3	17	22	18	19	
	6	22	3	2	2	3	15	22	17	19	
	7	23	3	2	2	3	13	21	17	19	
	8	24	3	1	2	3	10	21	16	19	
	9	28	3	1	2	3	10	21	15	19	
34	1	4	5	4	4	3	19	14	25	13	
	2	5	4	4	4	3	19	13	21	12	
	3	6	4	4	4	3	19	12	20	12	
	4	7	4	4	4	3	19	11	19	11	
	5	8	3	4	3	3	19	8	15	10	
	6	16	3	4	3	3	19	7	11	10	
	7	17	3	4	3	3	19	6	9	10	
	8	19	3	4	2	3	19	5	6	8	
	9	29	3	4	2	3	19	5	4	8	
35	1	5	5	3	4	2	27	26	28	25	
	2	6	4	3	4	2	25	23	26	23	
	3	14	4	3	4	2	23	22	23	21	
	4	19	4	3	4	2	21	20	20	19	
	5	23	4	3	4	2	18	18	18	18	
	6	24	4	3	4	2	15	13	17	15	
	7	28	4	3	4	2	13	11	14	14	
	8	29	4	3	4	2	11	9	10	11	
	9	30	4	3	4	2	8	6	8	10	
36	1	2	3	4	5	4	23	16	18	9	
	2	8	2	4	4	4	20	13	16	8	
	3	11	2	4	4	4	20	13	16	7	
	4	13	2	4	4	3	18	10	15	7	
	5	16	2	3	3	2	16	9	15	6	
	6	17	2	3	3	2	15	8	14	6	
	7	18	2	3	3	2	13	6	14	6	
	8	19	2	3	3	1	12	5	13	5	
	9	20	2	3	3	1	10	4	13	5	
37	1	3	3	1	4	4	5	15	16	14	
	2	4	3	1	3	3	4	14	15	13	
	3	6	3	1	3	3	4	14	14	13	
	4	8	3	1	3	3	3	14	13	12	
	5	9	3	1	3	3	3	14	11	12	
	6	10	3	1	3	3	2	14	10	12	
	7	14	3	1	3	3	2	14	8	11	
	8	21	3	1	3	3	1	14	7	11	
	9	28	3	1	3	3	1	14	7	10	
38	1	14	4	2	5	3	18	27	29	19	
	2	15	3	2	4	2	16	25	28	17	
	3	16	3	2	4	2	15	25	28	17	
	4	17	3	2	4	2	14	25	28	15	
	5	18	3	2	4	2	12	24	28	14	
	6	21	3	2	3	1	10	24	27	14	
	7	24	3	2	3	1	7	23	27	12	
	8	29	3	2	3	1	6	22	27	11	
	9	30	3	2	3	1	4	22	27	11	
39	1	5	3	1	5	4	23	23	27	21	
	2	6	3	1	4	3	21	22	25	19	
	3	7	3	1	4	3	19	18	23	17	
	4	9	3	1	4	3	18	17	22	14	
	5	10	3	1	3	3	16	15	22	12	
	6	11	3	1	3	3	14	12	19	10	
	7	13	3	1	2	3	11	10	18	9	
	8	21	3	1	2	3	11	6	18	4	
	9	23	3	1	2	3	7	6	17	2	
40	1	1	2	4	4	4	30	28	17	21	
	2	9	2	3	3	4	29	26	17	19	
	3	14	2	3	3	4	29	26	16	19	
	4	18	2	3	3	4	28	26	15	17	
	5	19	1	2	3	4	28	25	15	16	
	6	24	1	2	3	3	27	24	14	15	
	7	26	1	2	3	3	26	24	13	14	
	8	27	1	2	3	3	26	23	13	13	
	9	28	1	2	3	3	26	23	12	12	
41	1	2	2	5	2	3	25	10	25	13	
	2	9	2	4	2	2	23	9	23	13	
	3	12	2	4	2	2	19	9	23	11	
	4	16	2	4	2	2	18	8	23	11	
	5	19	2	4	2	1	16	8	22	10	
	6	23	2	4	1	1	15	7	22	8	
	7	26	2	4	1	1	11	7	21	7	
	8	28	2	4	1	1	10	6	20	6	
	9	30	2	4	1	1	7	6	20	6	
42	1	1	4	3	5	5	17	14	22	29	
	2	13	3	3	4	4	15	14	20	28	
	3	14	3	3	4	4	15	14	17	28	
	4	15	3	3	4	4	15	14	17	27	
	5	16	2	3	4	3	14	14	15	28	
	6	18	2	3	4	3	14	14	13	28	
	7	20	1	3	4	3	13	14	12	28	
	8	28	1	3	4	2	13	14	11	28	
	9	29	1	3	4	2	12	14	9	28	
43	1	5	4	4	4	4	27	18	25	8	
	2	6	4	4	4	4	25	17	23	6	
	3	7	4	4	4	4	23	15	20	6	
	4	8	3	3	3	4	22	14	19	6	
	5	15	3	2	3	3	18	14	17	4	
	6	16	3	2	2	3	17	14	15	4	
	7	17	3	1	2	3	15	13	14	3	
	8	18	2	1	1	3	11	11	14	2	
	9	19	2	1	1	3	11	11	11	2	
44	1	3	3	3	4	4	12	24	25	20	
	2	6	3	2	3	4	11	23	22	20	
	3	7	3	2	3	4	11	22	19	17	
	4	16	3	2	3	4	11	20	18	15	
	5	17	3	2	3	4	10	18	16	12	
	6	19	2	2	3	4	10	16	15	11	
	7	24	2	2	3	4	10	16	12	9	
	8	26	2	2	3	4	10	14	10	8	
	9	27	2	2	3	4	10	12	9	6	
45	1	8	3	4	5	2	17	20	20	27	
	2	11	3	4	4	2	17	16	19	23	
	3	16	3	4	4	2	17	15	19	23	
	4	17	3	4	4	2	16	12	18	19	
	5	18	3	4	4	2	16	10	18	18	
	6	20	3	4	4	2	16	9	18	16	
	7	21	3	4	4	2	15	8	18	13	
	8	23	3	4	4	2	15	4	17	11	
	9	29	3	4	4	2	15	2	17	9	
46	1	1	5	3	4	5	26	26	20	22	
	2	4	5	2	3	5	24	26	20	20	
	3	7	5	2	3	5	23	25	19	20	
	4	11	5	2	3	5	23	25	18	20	
	5	12	5	1	2	5	22	24	17	19	
	6	14	5	1	2	5	20	23	17	18	
	7	16	5	1	2	5	20	23	15	17	
	8	19	5	1	2	5	19	22	15	16	
	9	24	5	1	2	5	18	22	14	16	
47	1	4	5	4	2	5	19	7	26	12	
	2	6	4	4	1	4	16	7	24	11	
	3	7	3	4	1	4	13	6	23	10	
	4	9	3	3	1	4	12	6	22	9	
	5	11	2	3	1	3	10	5	21	9	
	6	12	2	3	1	3	7	4	19	7	
	7	16	1	2	1	3	7	4	18	7	
	8	17	1	2	1	3	3	4	17	6	
	9	25	1	2	1	3	2	3	15	5	
48	1	4	5	4	3	4	18	16	4	12	
	2	5	5	3	2	4	16	14	4	11	
	3	13	5	3	2	4	13	14	3	11	
	4	15	5	3	2	4	12	14	3	11	
	5	16	5	3	1	4	9	13	2	10	
	6	22	5	3	1	4	9	12	2	10	
	7	23	5	3	1	4	6	12	2	10	
	8	26	5	3	1	4	5	12	1	9	
	9	28	5	3	1	4	3	11	1	9	
49	1	1	4	5	3	4	27	14	24	15	
	2	2	4	4	3	3	25	14	23	14	
	3	6	4	4	3	3	23	14	22	13	
	4	7	4	4	2	3	18	13	21	12	
	5	8	4	4	2	2	18	13	21	11	
	6	9	3	4	2	2	13	13	20	11	
	7	10	3	4	2	2	12	12	20	10	
	8	14	3	4	1	1	7	12	18	9	
	9	28	3	4	1	1	4	12	18	7	
50	1	5	5	2	2	4	16	11	17	24	
	2	6	4	2	1	4	16	11	16	20	
	3	11	4	2	1	4	16	11	15	18	
	4	13	3	2	1	4	16	11	12	15	
	5	14	3	2	1	4	15	11	11	14	
	6	17	3	2	1	4	15	11	9	12	
	7	18	3	2	1	4	15	11	5	9	
	8	22	2	2	1	4	14	11	4	5	
	9	25	2	2	1	4	14	11	1	3	
51	1	2	5	4	3	4	12	24	30	20	
	2	3	4	3	2	4	12	24	27	20	
	3	7	4	3	2	4	10	22	24	17	
	4	12	4	3	2	4	10	20	18	16	
	5	15	4	3	2	3	8	20	16	14	
	6	17	4	2	1	3	7	18	15	14	
	7	18	4	2	1	3	6	17	10	12	
	8	20	4	2	1	3	3	15	9	10	
	9	25	4	2	1	3	2	15	7	9	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	26	26	25	29	738	852	929	868

************************************************************************
