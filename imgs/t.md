# Finance Engineering
*Solving problems in quantitative finance with statistics and applied math*

**Problem 1**: *Analysis of General Motors and Ford returns*
![t](imgs/problem1.png)

**Solution**:
> The `problem1.R` program will read the dataset `Stock_bond.csv` containing daily volumes, adjusted closing (AC) prices of stocks and the S&P 500 (columns B–W), and yields on bonds (columns X–AD) from January 2, 1987, to September 1, 2006. It will then plot the returns of General Motors and Ford and seek to answer questions about the correlation between the two. The graph plotting both returns is shown below (the answer for problem 1 is true for all three questions):

![t](imgs/returns_plot.png)

**Problem 2**: *Log Returns vs Simple Returns and their correlations*
![t](imgs/problem2.png)

**Solution**:
> Logarithm return vs. Simple Return of General Motors:

![t](imgs/log_vs_simple.png)

> That's trivial in R because the native function `cor()` calculates the correlation between the two returns.
> If correlation is equal to one, then the two assets have a positive correlation, meaning that holding both assets provides no hedging benefit. You can see that the log return of GM is very correlated to the simple return of GM, as `cor(GMReturn, LogGMReturn) = 0.995408`:

![t](imgs/correlation_gm.png)

**Problem 3**: *Analysis of Microsoft and Merck returns (like Problem 1)*
![t](imgs/problem3.png)

**Solution**:
> Just as with Problem 1, we plot the returns without difficulty. Regarding the possible correlation between the Microsoft and Merck returns, there is some correlation between them; however, we have some positive outliers in Merck returns that are negatively correlated with the Microsoft returns of the same period, such as a point at coordinates ~ (0.1, 0.0) for MSFT and ~ (-0.15) for MRK.

![t](imgs/msft_mrk_plot.png)
