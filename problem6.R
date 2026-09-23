niter <- 1e5 # 100,000
loss <- rep(0, niter)
set.seed(2009)
for(i in 1:niter) {
    r <- rnorm(100, mean=0.05/253, sd=0.23/sqrt(253))
    # log(1e6)=1.000.000$ amount of the stock the hedge fund has
    logPrice <- log(1e6) + cumsum(r) # the asset price after the 100 days 
    price <- exp(logPrice)
    # Find all days where thresholds are crossed
    hit_upper <- which(logPrice >= log(1100000))
    hit_lower <- which(logPrice <= log(950000))
    # Find the first day each barrier is hit, default is 101
    first_upper <- if (length(hit_upper) > 0) min(hit_upper) else 101
    first_lower <- if (length(hit_lower) > 0) min(hit_lower) else 101
    # Determine if a loss occurred
    if(first_lower < first_upper) {
        # Lower barrier hit before upper barrier
        loss[i] <- 1
    } else if (first_upper < first_lower){
        # Upper barrier hit before lower barrier -> Profit, no loss
        loss[i] <- 0
    } else {
        # Neither barrier was hit, sold on day 100
        final_price <- price[100]
        loss[i] <- as.numeric(final_price < 1000000)
    }
}
# Estimate the probability of a loss
mean(loss)