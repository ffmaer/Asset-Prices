format compact
clc

bid=[28.25
30.75
33.25
36.25
39.5
43.25
47
51.25
56
61.25];

ask=[28.25
30.75
33.25
36.25
39.5
43.25
47
51.25
56
61.25];

mid=(ask+bid)/2;

k=[1340
1350
1360
1370
1380
1390
1400
1410
1420
1430];

call=1395.75-k+mid;


call_bid=[82.5
75.25
68
61.25
54.5
48.25
42.25
36.75
31.75
27];

call_ask=[85.75
78.25
71
64
57.25
50.75
44.75
39.25
33.75
29];

plot(k,call,k,call_bid,k,call_ask);


legend('call implied','bid','ask');

