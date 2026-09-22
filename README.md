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
> That's trivial in R because to compute the log return for GM and plotting the simple returns
versus the log returns and computing their correlations, the R function cor() does this if cor() = 1 then they are "equal".
The graph of log return vs simple return show this
![t](imgs/log_vs_simple.png)
![t](imgs/correlation_gm.png)
