# CSCI389_HW1
Homework 01 (Benchmarking the memory hierarchy) for Reed College Computer Systems Course
Part 1: Benchmarking (60%)
During the first part, you'll write a program (in C or C++) that measures the latency of reading a byte from memory out of a buffer of N bytes, while varying N through different sizes. Your program should iterate on different buffer sizes (say, from 2^10 to 2^26, whatever makes sense to get a meaningful range). For each size N, it should loop many times to read a byte from a pre-allocated buffer of size N, and measure the latency (end-to-end time in nanoseconds) of this copy, then print it out. 

☹

# Bytes:    Time of one byte:      Sum: 
1024        1.531                   157470
2048        0.907                   160093
4096        0.953                   159763
8192        0.742                   158827
16384       0.75                    160199
32768       0.921                   158991
65536       1.642                   160223
131072      2.621                   159062
262144      3.996                   158459
524288      6.236                   157488
1048576     5.822                   156918
2097152     9.111                   158978
4194304     9.136                   157241
8388608     19.535                  158472
16777216    13.611                  157385
33554432    18.839                  157391
67108864    33.177                  158401


Part 2: Graphing (10%)
Produce graph showing the mean latency per memory read (in ns, on the Y-axis) vs. buffer size in KB (on the x-axis). Iterate to make your graph readable and useful. Ask each other for feedback on clarity. You may use any graphing tool you're comfortable with: gnuplot, R, Excel, Google spreadsheets, etc. Your graph should be included and visible from the README.md file.

[Include graph here by refrencing links.]

Part 3: Analysis (30%)
Try to identify the sizes of your CPU's different caches from the graph and explain your reasoning. (Your guesses don't have to be 100% correct if the graph isn't accurate, but your reasoning should be.) If the graph is not monotonous or not a step-function, speculate why that might be.



Did you get approximately the same performance as these (http://norvig.com/21-days.html#answers) numbers? Explain why or why not.
For what I assume is going into L1 and what is going into L2, the numbers seem to be appropriate. Fetching from L1 takes around/less than a nanosecond or two. Fetching from L2 takes longer, reaching into the higher single digits of nanoseconds. However, I do not know if my computer has L3 or L4 (I am technically assuming that I have an L2, though with modern computers this is a reasonable assumption). []


Look up which specific CPU you have in your test computer (hint: /proc/cpuinfo on Linux) and what its cache sizes are supposed to be (with a search engine if necessary), and compare them to your guesses above in #1.
My CPU is: 2.3 GHz Dual-Core Intel Core i5 because it's a Mac. I'm sorry. 

