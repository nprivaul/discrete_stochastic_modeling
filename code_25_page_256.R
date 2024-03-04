install.packages("MDPtoolbox")
library(MDPtoolbox);p=1.0;
P <- array(0, c(7, 7, 2));q=1-p
P[,,1] <- matrix(c(0,0,0,1,0,0,0,
                   0,0,0,0,1,0,0, 
                   0,0,0,0,0,1,0, 
                   0,0,0,1,0,0,0, 
                   0,0,0,0,1,0,0, 
                   0,0,0,0,0,0,1,
                   0,0,0,0,0,0,1), nrow=7, ncol=7, byrow=TRUE)
P[,,2] <- matrix(c(0,1,0,0,0,0,0,
                   0,0,p,0,q,0,0, 
                   0,0,1,0,0,0,0, 
                   0,0,0,0,1,0,0, 
                   0,0,0,0,0,1,0, 
                   0,0,0,0,0,0,1,
                   0,0,0,0,0,0,1), nrow=7, ncol=7, byrow=TRUE)
R <- array(0, c(7, 2))
R[,1] <- matrix(c(0, -2, -1, -1, -3, 5, 0), nrow=1, ncol=7, byrow=TRUE);R[,2] <- R[,1]
mdp_check(P, R);mdp_value_iteration(P,R,discount=1)
