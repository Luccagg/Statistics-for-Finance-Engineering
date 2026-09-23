niter <- 1e5 # this num is the same as 1x10^5 = 100,000 (scientific notation)
# sets the number of simulation iterations to 100,000 ensuring large sample size
below <- rep(0, niter)
set.seed(2009) # set seed for randam number generator for replicability
for (i in 1:niter) {
    # Generates 45 random numbers from a normal distribution representing daily log returns
    r <- rnorm(45, mean=0.05/253, sd=0.23/sqrt(253))
    # cumsum(r) is the cumulative sum of the daily returns
    logPrice <- log(1e6) + cumsum(r) # 1e6 == 1x10^6 = 1.000.000 (the amount in dollars of stock the hedge fund has)
    minlogP <- min(logPrice) # minimum price over next 45 days
    # Checks if the min log price dropped below the lof of 950,0000
    # If true (converted to 1 by as.numeric), otherwise return 0
    # This value is saved in the below vector at position i
    below[i] <- as.numeric(minlogP < log(950000))
}
# Calculates the average of all the 1s and 0s in the below vector.
# This final value gives you the estimated probability that the asset price drops
# below $950.000 at least once during the 45-day period
mean(below)