niter <- 1e5 # 100,000
upper <- rep(0, niter)
set.seed(2009)
for(i in 1:niter) {
    r <- rnorm(100, mean=0.05/253, sd=0.23/sqrt(253))
    # log(1e6)=1.000.000$ amount of the stock the hedge fund has
    logPrice <- log(1e6) + cumsum(r) # the asset price after the 100 days 
    # Find all days where thresholds are crossed
    hit_upper <- which(logPrice > log(1100000))
    hit_lower <- which(logPrice < log(950000))
    # Find the first day each barrier is hit
    first_upper <- if (length(hit_upper) > 0) min(hit_upper) else 101
    first_lower <- if (length(hit_lower) > 0) min(hit_lower) else 101
    upper[i] <- as.numeric(first_upper < first_lower)
}
mean(upper)