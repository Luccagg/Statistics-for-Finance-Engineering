dat <- read.csv("datasets/Stock_Bond.csv")
attach(dat)
n <- dim(dat)[1]
# Computes the comulative simple return of General Motors bc is based
# on the adjusted closing price (represented by the GM_AC column)
GMReturn <- GM_AC[-1] / GM_AC[-n] - 1 # simple return
LogGMReturn <- log(GM_AC[-1] / GM_AC[-n]) # log return
CorReturns <- cor(GMReturn, LogGMReturn)
par(mfrow = c(1, 1))
plot(GMReturn, LogGMReturn)
