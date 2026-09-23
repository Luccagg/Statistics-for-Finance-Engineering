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
> Just as with Problem 1, we plot the returns without difficulty. Regarding the possible correlation between the Microsoft and Merck returns, there is some correlation between them; however, we have some positive outliers in Merck returns that are negatively correlated with the Microsoft returns of the same period, such as a point at coordinates ~ (0.1) for MSFT and ~ (-0.15) for MRK.

![t](imgs/msft_mrk_plot.png)

# Simulations
Hedge funds can earn high profits through the use of leverage, but leverage also creates high risk. The simulations in this section explore the effects of leverage in a simplified setting.

Suppose a hedge fund owns $1,000,000 of stock and used $50,000 of its own capital and $950,000 in borrowed money for the purchase. Suppose that if the value of the stock falls below $950,000 at the end of any trading day, then the hedge fund will sell all the stock and repay the loan. This will wipe out its $50,000 investment. The hedge fund is said to be leveraged 20:1 since its position is 20 times the amount of its own capital invested.

Suppose that the daily log returns on the stock have a mean of 0.05/year and a standard deviation of 0.23/year. These can be converted to rates per trading day by dividing by 253 and sqrt(253), respectively.

**Problem 4**: *Simulating the risk of a hedge fund leveraged position*
![t](imgs/problem4.png)

**Solution**:
> The `problem4.R` script simulates daily stock price paths utilizing a random walk model derived from the annualized parameters scaled down to daily trading intervals. By tracking the daily valuation of the portfolio, the simulation calculates the likelihood that the stock falls below the $950,000 margin threshold, triggering a forced liquidation and a complete loss of the $50,000 capital investment. In the `problem4.R` code you will see more comments explaining every line of code.

> When this code runs we get `mean(below) == 0,50988` which is roughly 51%. This means that for the 100,000 simulated paths about 51,000 of them experienced a dip below $950.000 at some point during the 45 days window. This means there is over a 50% chance (essentially a coin flip) that the leveraged position will hit the liquidation threshold and completely wipe out the $50,000 equity within just two months. It vividly demonstrates why high leverage (20:1) combined with a 23% annual volatility makes this an extremely high-risk strategy.


