---
title: "General code to fit ANOVA models with JAGS and 'rjags'"
author: "Andrea Onofri"
date: 2020-12-23
slug: 'Bayesian_stat'
categories:
  - R
  - JAGS
  - 'Bayesian_stat'
tags:
  - R
  - JAGS
  - 'Bayesian_stat'
archives:
  - 2020
---




One of the reasons why I like BUGS and all related dialects has been put nicely in a very good book, i.e. "Introduction to WinBUGS for ecologists" (Kery, 2010); at page 11, the author says: *"WinBUGS helps free the modeler in you"*. Ultimately, that statement is true: when I have fully understood a model with all its components (and thus I have become a modeler), I can very logically translate it to BUGS code. The drawback is that, very often, the final coding appears to be rather ‘problem-specific’ and difficult to be reused in other  situations, without an extensive editing work. 

For example, consider the ‘ANOVA models’ with all their ‘flavors’: one-way, two-ways with interactions, nested, and so on. These models are rather common in agricultural research and they are relatively easy to code in BUGS, following the suggestions provided in Kery’s book. However, passing from one model to the others requires some editing, which is often prone to errors. And errors in BUGS are difficult to spot in short time... Therefore, I have been wondering: “*Can I write general BUGS code, which can be used for all ANOVA models with no substantial editing?*”.

Finally, I have found a solution and, as it took me awhile to sort things out, I thought I might share it, for the benefit of those who would like to fit ANOVA models in the Bayesian framework.  It works with JAGS (JUST ANOTHER GIBBS SAMPLER), a BUGS dialect running also in Mac OS and developed by Marty Plummer. JAGS can be used from R, thanks to the 'rjags' package (Plummer, 2019), which I will use in this post.

Let’s start from a working example.

# A genotype experiment

The yields of seven wheat genotypes were compared in one experiment laid down in three randomised complete blocks. The data is available in an external repository as a 'csv' file and it can be loaded by using the code below.


``` r
fileName <- "https://www.casaonofri.it/_datasets/WinterWheat2002.csv"
dataset <- read.csv(fileName, header = T)
head(dataset)
##   Plot Block Genotype Yield
## 1   57     A COLOSSEO  4.31
## 2   61     B COLOSSEO  4.73
## 3   11     C COLOSSEO  5.64
## 4   60     A    CRESO  3.99
## 5   10     B    CRESO  4.82
## 6   42     C    CRESO  4.17
```

This is the typical situation were we might be interested in fitting an ANOVA model, with the yield as the response variable and the blocks and genotypes as the explanatory factors. The ultimate aim is to estimate genotype means and credible intervals, which calls for the Bayesian approach.

For the sake of simplicity, let's take both the block and genotype effects as fixed; in matrix notation, a general linear fixed effects model can be written as:

$$ Y = X \, \beta + \varepsilon$$

where `\(Y\)` is the vector of the observed response, `\(\beta\)` is the vector of estimated parameters, `\(X\)` is the design matrix and `\(\varepsilon\)` is the vector of residuals, which we assume as gaussian and homoscedastic ($\varepsilon \sim N(0, \sigma^2 I)$; N is the multivariate gaussian distribution). The same model can also be written as:

$$ Y \sim N \left( X \, \beta, \sigma^2 I \right)$$

In JAGS (and maybe also in other BUGS dialects), we can code every linear model using the above specification, as long as we can provide the correct design matrix `\(X\)`. Luckily, we will see that this is a rather simple task; but... let's do it one step at a time!

# Specification of a JAGS model

First of all, we open R and code a general linear JAGS model, as shown in the box below.


``` r
# Coding a JAGS model
modelSpec <- "
data {
n <- length(Y)
np <- dim(X)
nk <- dim(K)
}

model {
# Model 
for (i in 1:n) {
   expected[i] <- inprod(X[i,], beta)
   Y[i] ~ dnorm(expected[i], tau)
  }

# Priors
beta[1] ~ dunif(0, 1000000)
for (i in 2:np[2]){
  beta[i] ~ dnorm(0, 0.000001)
  }
sigma ~ dunif(0, 100)

# Derived quantities (model specific)
tau <- 1 / ( sigma * sigma)

# Contrasts of interest
for (i in 1:nk[1]) {
   mu[i] <- inprod(K[i,], beta)
  }
}"
writeLines(modelSpec, con="ModelAOV.txt")
```

Let's see some more detail; you may notice that the code above consists of two fundamental parts, surrounded by curly brackets:

1. a 'data' part
2. a 'model' part

In the data part, we create three variables, i.e. the number of data ($n$), the number of estimated parameters ($np$) and the number of contrasts (see later). All variables are used in successive model steps and they are obtained, respectively, by counting the number of observations in the vector `\(Y\)`, the number of columns in the design matrix `\(X\)` and the number of rows in the contrast matrix `\(K\)`.

In the model part we have three further components:

1. the model specification
2. the priors
3. the derived quantities

The model specification contains 'deterministic' and 'stochastic' statements (nodes). The 'deterministic' node returns the expected values for all observations, based on multiplying the design matrix `\(X\)` by the vector of estimated parameters `\(\beta\)`. In practice, we use a 'for()' loop and, for each i^th^ observation, we sum the products of all element in the i^th^ row of `\(X\)` by the corresponding elements in the vector of estimated parameters `\(\beta\)`. This sum of products is accomplished by using the function `inprod(X[i,], beta)`.

In the 'stochastic' node we specify that the observed values in `\(Y\)` are sampled from a gaussian distribution ('dnorm'), with mean equal to the expected value and precision equal to 'tau'. In JAGS, WinBUGS and all related software, the normal distribution is parameterised by using the precision `\(\tau = 1/\sigma^2\)`, instead of standard deviation.

Next, we have to define the priors for all the estimands. For those who are not very much into Bayesian inference, I will only say that priors represent our expectations about model parameters before looking at the data; in this example, we use very vague priors, meaning that, before looking at the data, we have no idea about the values of these unknown quantities. In detail, for the intercept we specify a uniform distribution from 0 to 10000 (`beta[1] ~ dunif(0, 1000000)`), meaning that the overall mean might be included between 0 and 10000 and we have no preference for any values within that range (a very vague prior, indeed). For all other effects in the vector `\(\beta\)`, our prior expectation is that they are normally distributed with a mean of 0 and very low precision (`beta[i] ~ dnorm(0, 0.000001)`). For the residual standard deviation, we expect that it is uniformly distributed from 0 to 100. The selection of priors is central to Bayesian inference and, in other circumstances, you may like to adopt more informative priors. We do not discuss this important item here.

In the end, we also specify some quantities that should be derived from estimated parameters. As we have put a prior on standard deviation, we need to derive the precision (`tau <- 1 / ( sigma * sigma)`), that is necessary for the stochastic node in the specification of our linear model. Afterwards, we add a set of contrasts, which are specified by way of a matrix of contrast coefficients ($K$; one row per each contrast). This is useful to calculate, e.g., the means of treatment levels or pairwise differences between means as linear combinations of model parameters.

The model definition in the box above is assigned to a text string (`modelSpec`) and it is finally written to an external text file ('modelAOV.txt'), using the function `writeLines()`.

I conclude this part by saying that, based on our model specification, JAGS requires three input ingredients: the `\(Y\)` vector of responses, the `\(X\)` matrix and the `\(K\)` contrast matrix. Furthermore, JAGS requires initial values for all estimands, i.e. for all quantities for which we have specified our prior expectations (the 'beta' vector and the 'sigma' scalar). 

# Fitting the JAGS model from within R

JAGS models can be fitted from R by using the `rjags` package (Plummer, 2019). However, we have some preliminary steps to accomplish:

1. loading the dataset (see the first box above);
2. creating the `\(Y\)` vector of responses
3. creating the `\(X\)` matrix
4. creating the `\(K\)` matrix

The first two steps are obvious. The third step can be accomplished by using the `model.matrix()` function: the call is very similar to an 'lm()' call, although we do not need to explicitly indicate the response variable (see the box below). In order to create the `\(K\)` matrix of contrasts, we might prefer to work with the sum-to-zero parameterisation (`options(contrasts=c("contr.sum", "contr.poly"))`), so that the intercept represents the overall mean (for balanced designs) and the effects of blocks and genotypes represent differences with respect to the overall mean. In the box below we specify a set of eight contrasts returning the means for all genotypes.



``` r
options(contrasts=c("contr.sum", "contr.poly"))
Y <- dataset$Yield  
X <- model.matrix( ~ Block + Genotype, data = dataset)

k1 <- c(1, 0, 0, 1, 0, 0, 0, 0, 0, 0)
k2 <- c(1, 0, 0, 0, 1, 0, 0, 0, 0, 0)
k3 <- c(1, 0, 0, 0, 0, 1, 0, 0, 0, 0)
k4 <- c(1, 0, 0, 0, 0, 0, 1, 0, 0, 0)
k5 <- c(1, 0, 0, 0, 0, 0, 0, 1, 0, 0)
k6 <- c(1, 0, 0, 0, 0, 0, 0, 0, 1, 0)
k7 <- c(1, 0, 0, 0, 0, 0, 0, 0, 0, 1)
k8 <- c(1, 0, 0,-1,-1,-1,-1,-1,-1,-1)
K <- rbind(k1, k2, k3, k4, k5, k6, k7, k8)
```

If you need further explanation about the `\(X\)` and `\(K\)` matrices and their role in the analysis, I have added an appendix below. Otherwise, we are ready to fit the model. To this aim, we:

1. load the `rjags` library;
2. create two lists: a list of all the data needed for the analysis (`dataList`) and a list of the initial values for the parameters to be estimated (`initList`). Initial values need not be particularly precise;
3. send the model specification and the other data to JAGS, using the function `jags.model()` from the `rjags` package;
4. start the sampler, using the `coda.samples()` function. In this step, we specify which parameters we want to obtain estimates for and the number of samples we want to draw (`n.iter`).
5. obtain the number of required samples, using the `window()` function. In this step, we specify how many samples should be discarded as `burn.in`. These samples might have been produced before reaching the convergence, so they might not come from the correct posterior distribution and we need to get rid of them.

From the posterior, we obtain the mean and median as measures of central tendency, the standard deviation as a measure of uncertainty and credible intervals, which are the Bayesian analog to confidence intervals. Due to our vague priors, the results are very similar to those obtained with a traditional frequentist analysis (see the appendix below).


``` r
library(rjags)

# Create lists
dataList <- list(Y = Y, X = X, K = K)
initList <- list(beta = c(4.3, rep(0, 9)), sigma = 0.33)

# Start sampler
mcmc <- jags.model("modelAOV.txt", 
                   data = dataList, inits = initList, 
                   n.chains = 4, n.adapt = 100)
## Compiling data graph
##    Resolving undeclared variables
##    Allocating nodes
##    Initializing
##    Reading data back into data table
## Compiling model graph
##    Resolving undeclared variables
##    Allocating nodes
## Graph information:
##    Observed stochastic nodes: 24
##    Unobserved stochastic nodes: 11
##    Total graph size: 432
## 
## Initializing model
 r
# Get samples
res <- coda.samples(mcmc, variable.names = c("beta", "sigma", "mu"),
                    n.iter = 1000)

out <- summary(window(res, start = 110))
res <- cbind(out$statistics[,1:2], out$quantiles[,c(1,5)])
res
##                  Mean         SD        2.5%       97.5%
## beta[1]   4.425213076 0.07633265  4.27180162  4.57757712
## beta[2]  -0.220402991 0.10493361 -0.43460002 -0.01452053
## beta[3]  -0.008335906 0.10513394 -0.21828657  0.19688408
## beta[4]   0.465595798 0.20197058  0.05630502  0.85705203
## beta[5]  -0.093757588 0.19936718 -0.49106686  0.29338817
## beta[6]  -0.181501354 0.19588073 -0.58795551  0.21295888
## beta[7]  -0.093929620 0.20036857 -0.50103440  0.31942162
## beta[8]   0.542241669 0.19682564  0.15629407  0.93764331
## beta[9]   0.080757367 0.20174302 -0.32358068  0.48797840
## beta[10] -1.085347803 0.19406749 -1.47411280 -0.70427190
## mu[1]     4.890808874 0.21526911  4.45431138  5.30838422
## mu[2]     4.331455488 0.21592634  3.88840106  4.75490499
## mu[3]     4.243711722 0.21040517  3.80807515  4.67487797
## mu[4]     4.331283456 0.21501684  3.88887466  4.76764806
## mu[5]     4.967454745 0.21026230  4.54530567  5.39109532
## mu[6]     4.505970443 0.21410813  4.08271302  4.93560778
## mu[7]     3.339865273 0.20943573  2.91790120  3.74547956
## mu[8]     4.791154607 0.20979109  4.37619447  5.20026395
## sigma     0.357986243 0.07921185  0.24410163  0.54760689
```

# Reusing the code for a multi-environment experiment

The JAGS model above is very general and can be easily reused for other situations. For example, if the above genotype experiment is replicated across years, we might like to fit an ANOVA model by considering the blocks (within years), the genotypes, the years and the 'year by genotype' interaction. The dataset is available in the same external repository, as the 'WinterWheat.csv' file.

The JAGS specification for this multienvironment model does not change, we only need to update the `\(Y\)`, `\(X\)` and `\(K\)` matrices, as shown in the box below. In order to obtain the contrast matrix for the means of the 'genotype x environment' combinations we need to write some cumbersome code, as shown below (but, perhaps, some of you could suggest better alternatives...).


``` r
library(tidyverse)

# Loading the data
fileName <- "https://www.casaonofri.it/_datasets/WinterWheat.csv"
dataset <- read_csv(fileName)
dataset <- dataset %>% 
  mutate(across(c(Block, Year, Genotype), .fns = factor))
dataset
## # A tibble: 168 × 5
##     Plot Block Genotype Yield Year 
##    <dbl> <fct> <fct>    <dbl> <fct>
##  1     2 1     COLOSSEO  6.73 1996 
##  2   110 2     COLOSSEO  6.96 1996 
##  3   181 3     COLOSSEO  5.35 1996 
##  4     2 1     COLOSSEO  6.26 1997 
##  5   110 2     COLOSSEO  7.01 1997 
##  6   181 3     COLOSSEO  6.11 1997 
##  7    17 1     COLOSSEO  6.75 1998 
##  8   110 2     COLOSSEO  6.82 1998 
##  9   256 3     COLOSSEO  6.52 1998 
## 10    18 1     COLOSSEO  7.18 1999 
## # ℹ 158 more rows
 r
# Create input matrices
Y <- dataset$Yield 
X <- model.matrix(~ Genotype*Year +  Block:Year, data = dataset)

# Workaround to get K matrix
asgn <- attr(X, "assign")
tmp1 <- expand.grid(Genotype = unique(dataset$Genotype),
                    Year = unique(dataset$Year))
K1 <- model.matrix(~ Genotype*Year, data = tmp1)
K2 <- matrix(0, nrow = nrow(K1), ncol = length(asgn[asgn==4]))
colnames(K2) <- colnames(X)[asgn==4]
K <- cbind(K1, K2)
row.names(K) <- with(tmp1, interaction(Genotype:Year))
# K

# Create lists
dataList <- list(Y = Y, X = X, K = K)
initList <- list(beta = c(4.3, rep(0, length(X[1,])-1)), sigma = 0.33)

# Start sampler
mcmc <- jags.model("modelAOV.txt", 
                   data = dataList, inits = initList, 
                   n.chains = 4, n.adapt = 100)
## Compiling data graph
##    Resolving undeclared variables
##    Allocating nodes
##    Initializing
##    Reading data back into data table
## Compiling model graph
##    Resolving undeclared variables
##    Allocating nodes
## Graph information:
##    Observed stochastic nodes: 168
##    Unobserved stochastic nodes: 71
##    Total graph size: 16380
## 
## Initializing model
 r
# Get samples
res <- coda.samples(mcmc, variable.names = c("beta", "sigma", "mu"),
                    n.iter = 1000)

out <- summary(window(res, start = 110))
res <- cbind(out$statistics[,1:2], '50%'=out$quantiles[,3],
             out$quantiles[,c(1, 5)])
head(res)
##               Mean         SD        50%         2.5%       97.5%
## beta[1]  6.2665656 0.03069027  6.2671248  6.206555065  6.32625739
## beta[2]  0.1485481 0.07941334  0.1485899 -0.007412086  0.30975781
## beta[3] -0.2935479 0.08026317 -0.2922866 -0.449606552 -0.13438498
## beta[4]  0.3265646 0.08078293  0.3262656  0.167862261  0.48215271
## beta[5] -0.1853383 0.07902656 -0.1846564 -0.342314452 -0.03456188
## beta[6]  0.4287064 0.07952814  0.4296786  0.270911388  0.58405005
 r
#....
tail(res)
##            Mean         SD       50%      2.5%    97.5%
## mu[52] 4.341558 0.22102092 4.3386076 3.9095199 4.781850
## mu[53] 4.964105 0.22727675 4.9598533 4.5368379 5.410216
## mu[54] 4.503050 0.22324014 4.5011978 4.0642354 4.928999
## mu[55] 3.340653 0.22339475 3.3422819 2.8938384 3.781970
## mu[56] 4.788701 0.22353741 4.7871332 4.3484236 5.226828
## sigma  0.388912 0.02893503 0.3873052 0.3386519 0.452558
```

The discovery of the `inprod()` function was a very big hit for me: the above approach is very flexible and lend itself to a lot of potential uses, including fitting mixed models. I will show some examples in future posts.

Thanks for reading and happy 2021! Let's hope we finally get back to normality!


Prof. Andrea Onofri   
Department of Agricultural, Food and Environmental Sciences   
University of Perugia (Italy)   
email: [andrea.onofri@unipg.it](mailto:andrea.onofri@unipg.it)


---

# References

1. Kery, M., 2010. Introduction to WinBUGS for ecologists. A Bayesian approach to regression, ANOVA, mixed models and related analyses. Academic Press, Burlington, MA (USA).
2. Plummer M. (2019). rjags: Bayesian Graphical Models using MCMC. R package version 4-10. https://CRAN.R-project.org/package=rjags

# Appendix

I feel that it may be useful to take a look at the results of traditional model fitting with the `lm()` function and to explore the role of the matrices `\(X\)` and `\(K\)`. Let's go back to the first example:


``` r
fileName <- "https://www.casaonofri.it/_datasets/WinterWheat2002.csv"
dataset <- read.csv(fileName, header = T)
mod.aov <- lm(Yield ~ Block + Genotype, data = dataset)
summary(mod.aov)
## 
## Call:
## lm(formula = Yield ~ Block + Genotype, data = dataset)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -0.38458 -0.12854 -0.08271  0.20396  0.51875 
## 
## Coefficients:
##              Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  4.424583   0.065697  67.348  < 2e-16 ***
## Block1      -0.218333   0.092910  -2.350  0.03397 *  
## Block2      -0.009583   0.092910  -0.103  0.91931    
## Genotype1    0.468750   0.173818   2.697  0.01737 *  
## Genotype2   -0.097917   0.173818  -0.563  0.58212    
## Genotype3   -0.184583   0.173818  -1.062  0.30624    
## Genotype4   -0.084583   0.173818  -0.487  0.63406    
## Genotype5    0.538750   0.173818   3.100  0.00784 ** 
## Genotype6    0.078750   0.173818   0.453  0.65745    
## Genotype7   -1.084583   0.173818  -6.240 2.16e-05 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.3218 on 14 degrees of freedom
## Multiple R-squared:  0.8159,	Adjusted R-squared:  0.6976 
## F-statistic: 6.895 on 9 and 14 DF,  p-value: 0.0007881
```

Let's also look at the first row of the `\(X\)` matrix, which I can also retrieve from the fitted model object:


``` r
model.matrix(mod.aov)[1,]
## (Intercept)      Block1      Block2   Genotype1   Genotype2   Genotype3 
##           1           1           0           1           0           0 
##   Genotype4   Genotype5   Genotype6   Genotype7 
##           0           0           0           0
```

We see that the vector of estimated parameters and the first row in `\(X\)` have 10 elements: if we multiply them and sum, we obtain:

$$ 1 \cdot 4.425 + 1 \cdot -0.218 + 0 \cdot -0.0096 + 1 \cdot 0.469 + 0 \cdot ... = 4.675$$

that is exactly the first fitted value (first genotype in first block):


``` r
fitted(mod.aov)[1]
##     1 
## 4.675
```

If we do this for all rows in `\(X\)`, we obtain all fitted values and such an operation is most quickly done by using matrix multiplication.

Likewise, if we multiply the elements in 'beta' for the corresponding elements in the first row of the 'K' matrix and sum, we get the mean for the first genotype (COLOSSEO) and if we do so for all rows in `\(K\)` we get all the genotype means.

$$ 1 \cdot 4.425 + 0 \cdot -0.218 + 0 \cdot -0.0096 + 1 \cdot 0.469 + 0 \cdot ... = 4.893$$



``` r
emmeans::emmeans(mod.aov, ~Genotype) 
##  Genotype emmean    SE df lower.CL upper.CL
##  COLOSSEO   4.89 0.186 14     4.49     5.29
##  CRESO      4.33 0.186 14     3.93     4.73
##  DUILIO     4.24 0.186 14     3.84     4.64
##  GRAZIA     4.34 0.186 14     3.94     4.74
##  IRIDE      4.96 0.186 14     4.56     5.36
##  SANCARLO   4.50 0.186 14     4.10     4.90
##  SIMETO     3.34 0.186 14     2.94     3.74
##  SOLEX      4.79 0.186 14     4.39     5.19
## 
## Results are averaged over the levels of: Block 
## Confidence level used: 0.95
```

Hope this is useful!
