# Finance Engineering
*Solving problems in quantitative finance with statistics and applied math*

**Problem 1**: *Analysis of General Motor and Fords returns*
![t](imgs/problem1.png)

**Solution**:
> The problem1.R program will read the data set Stock_bond.csv containing daily volumes and adjusted closing
(AC) prices of stocks and the S&P 500 (columns B–W) and yields on bonds (columns X–AD) from 2-Jan-1987 to 1-Sep-2006, and plot the returns of the General Motors and Fords and seek to answer about correlation between the two, the graph plotting both returns is: (The answer for problem 1 is true for all three questions)

![t](imgs/returns_plot.png)

**Problem 2**: *Log Returns vs Simple Returns and their correlations*
![t](imgs/problem2.png)

**Solution**:
> Logarithm return vs Simple Return of General Motors

![t](imgs/log_vs_simple.png)

> That's trivial in R because the native function cor() calculates the correlation between the two returns
.
> If correlation is equal to one than the two assets have a positive correlation meaning that holding both assets provides no hedging benefit

![t](imgs/correlation_gm.png)
