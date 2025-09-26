setwd("C:\\Users\\nirgn\\OneDrive\\Documents")
getwd()
weights <- c(2.3, 2.5, 2.8, 2.4, 2.6, 2.9, 3.1, 2.7, 2.5, 2.8,2.4, 2.6, 2.9, 3.0, 2.7, 2.4, 2.6, 2.5, 2.7, 2.8)
popmn <- mean(weights)
popstd <- sd(weights) * sqrt((length(weights)-1)/length(weights))
popmn

n.samples  <- 25
sample.size <- 6
set.seed(123)


sample.means <- numeric(n.samples)
sample.sds   <- numeric(n.samples)


for (i in 1:n.samples) {
  samp <- sample(weights, sample.size, replace = TRUE)
  sample.means[i] <- mean(samp)
  sample.sds[i]   <- sd(samp)
}

sample.means
sample.sds

mean.of.sample.means <- mean(sample.means)
sd.of.sample.means <- sd(sample.means)

mean.of.sample.means
sd.of.sample.means


popmn
mean.of.sample.means


theoretical.sd <- popstd / sqrt(sample.size)
sd.of.sample.means
theoretical.sd  
