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
> If correlation is equal to one than the two assets have a positive correlation meaning that holding both assets provides no hedging benefit, you can see that the log return of GM is very correlated to the simple return of GM as cor(GMReturn, LogGMReturn) = 0.995408

![t](imgs/correlation_gm.png)

**Problem 3**: *Analysis of Microsoft and Merck returns like problem 1*
![t](imgs/problem3.png)

**Solution**:
>Just as the problem 1, we plot the returns without difficult. The answer to the the possible correlation between the Microsoft and Merck returns is that are some correlation between the returns, but we have some positive outliers in Merck returns that are negative correlated with the Microsoft returns of the same period, like a point in coordinates ~ (1.0) for MRK and ~ -0.15

![t](imgs/msft_mrk_plot.png)
