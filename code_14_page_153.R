install.packages("devtools")
library(lattice);library(rstan)
stanmodelcode <- "data {int<lower=0> N;int y[N];}
parameters {real<lower=0,upper=1> theta;}
model {theta ~ uniform(0,1);y ~ bernoulli(theta);}"
N <- 3;y <- rbinom(N, 1, .3)
y <- c(0,0,0,0,0,1,0,0);N=length(y)
dat <- list(N = N, y = y); sapply(dat, class)
fit <- stan(model_code=stanmodelcode, model_name="Bernoulli-uniform", data=dat, iter=2000, chains=1, sample_file='norm.csv', verbose=TRUE) # try iter = 100 
traceplot(fit,inc_warmup = TRUE,col="purple");
e <- extract(fit) 
mean(e$theta) 
densityplot(e$theta, xlim = c(0,1),lwd=2)
