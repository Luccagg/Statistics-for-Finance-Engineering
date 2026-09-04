dat <- read.csv('datasets/Stock_Bond.csv')
attach(dat)
n <- dim(dat)[1]
GMReturn <- GM_AC[-1]/GM_AC[-n] - 1
FReturn <- F_AC[-1]/F_AC[-n] - 1
par(mfrow <- c(1,1))
plot(GMReturn, FReturn)
