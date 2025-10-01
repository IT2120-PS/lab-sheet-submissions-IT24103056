setwd("C:\\Users\\nirgn\\OneDrive\\Desktop\\IT24103056 Labsheet09")
getwd()

set.seed(123)   

baking_time <- rnorm(25, mean = 45, sd = 2)
print(baking_time)


t_test_result <- t.test(baking_time, mu = 46, alternative = "less")


print(t_test_result)

test_statistic <- t_test_result$statistic
p_value <- t_test_result$p.value
conf_interval <- t_test_result$conf.int

cat("Test Statistic (t):", test_statistic)
cat("P-value:", p_value)
cat("Confidence Interval:", conf_interval)
