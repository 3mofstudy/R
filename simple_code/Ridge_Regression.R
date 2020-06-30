#參考資料https://drsimonj.svbtle.com/ridge-regression-with-glmnet

library(tidyverse)
library(broom)
library(glmnet)

y <- mtcars$hp
x <- mtcars %>% select(mpg, wt, drat) %>% data.matrix()
lambdas <- 10^seq(3, -2, by = -.1)

fit <- glmnet(x, y, alpha = 0, lambda = lambdas)
summary(fit)
cv_fit <- cv.glmnet(x, y, alpha = 0, lambda = lambdas)

plot(cv_fit)

opt_lambda <- cv_fit$lambda.min
opt_lambda

fit <- cv_fit$glmnet.fit
summary(fit)

y_predicted <- predict(fit, s = opt_lambda, newx = x)
