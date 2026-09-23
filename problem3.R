# Loading the dataset 
dat <- read.csv("datasets/Stock_Bond.csv")
attach(dat)
n <- dim(dat)[1]
MSFTReturn <- MSFT_AC[-1] / MSFT_AC[-n] - 1
MERCKReturn <- MRK_AC[-1] / MRK_AC[-n] - 1
par(mfrow = c(1,1))
plot(MSFTReturn, MERCKReturn)