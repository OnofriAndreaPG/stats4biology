---
title: "Going back to the basics: the correlation coefficient"
author: Andrea Onofri
date: '2019-02-07'
slug: correlation
categories:
  - R
tags:
  - R
  - correlation
archives:
  - 2019
---

# A measure of joint variability

In statistics, dependence or association is any statistical relationship, whether causal or not, between two random variables or bivariate data. It is often measured by the Pearson correlation coefficient:

`$$\rho _{X,Y} =\textrm{corr} (X,Y) = \frac {\textrm{cov}(X,Y) }{ \sigma_X \sigma_Y } = \frac{ \sum_{1 = 1}^n [(X - \mu_X)(Y - \mu_Y)] }{ \sigma_X \sigma_Y }$$`

Other measures of correlation can be thought of, such as the Spearman `\(\rho\)` rank correlation coefficient or Kendall `\(\tau\)` rank correlation coefficient.

# Assumptions for the Pearson Correlation Coefficient

The Pearson correlation coefficients makes a few assumptions, which should be carefully checked.

1. Interval-level measurement. Both variables should be measured on a quantitative scale.
2. Random sampling. Each subject in the sample should contribute one value on X, and one value on Y. The values for both variables should represent a random sample drawn from the population of interest.
3. Linearity. The relationship between X and Y should be linear.
4. Bivarlate normal distribution. This means that (i) values of X should form a normal distribution at each value of Y and (ii) values of Y should form a normal distribution at each value of X.

# Hypothesis testing

It is possible to test whether `\(r = 0\)` against the alternative $ r \neq 0$. The test is based on the idea that the amount:

$$ T = \frac{r \sqrt{n - 2}}{\sqrt{1 - r^2}}$$
is distributed as a Student's t variable.

Let's take the two variables 'cyl' and 'mpg' from the 'mtcars' data frame. The correlation is:


``` r
r <- cor(mtcars$cyl, mtcars$gear)
r
```

```
## [1] -0.4926866
```

The T statistic is:


``` r
T <- r * sqrt(32 - 2) / sqrt(1 - r^2)
T
```

```
## [1] -3.101051
```

The p-value for the null is:


``` r
2 * pt(T, 30)
```

```
## [1] 0.004173297
```

which is clearly highly significant. The null can be rejected.

As for hypothesis testing, it should be considered that the individuals where couple of measurements were taken should be independent. If they are not, the t test is invalid. I am dealing with this aspect somewhere else in my blog.


#Correlation in R

We have already seen that we can use the usual function 'cor(matrix, method=)'. In order to obtain the significance, we can use the 'rcorr()' function in the Hmisc package


``` r
# Correlations with significance levels
library(Hmisc)
corr2 <- rcorr(as.matrix(mtcars), type="pearson")
print(corr2$r, digits = 2)
```

```
##        mpg   cyl  disp    hp   drat    wt   qsec    vs     am  gear   carb
## mpg   1.00 -0.85 -0.85 -0.78  0.681 -0.87  0.419  0.66  0.600  0.48 -0.551
## cyl  -0.85  1.00  0.90  0.83 -0.700  0.78 -0.591 -0.81 -0.523 -0.49  0.527
## disp -0.85  0.90  1.00  0.79 -0.710  0.89 -0.434 -0.71 -0.591 -0.56  0.395
## hp   -0.78  0.83  0.79  1.00 -0.449  0.66 -0.708 -0.72 -0.243 -0.13  0.750
## drat  0.68 -0.70 -0.71 -0.45  1.000 -0.71  0.091  0.44  0.713  0.70 -0.091
## wt   -0.87  0.78  0.89  0.66 -0.712  1.00 -0.175 -0.55 -0.692 -0.58  0.428
## qsec  0.42 -0.59 -0.43 -0.71  0.091 -0.17  1.000  0.74 -0.230 -0.21 -0.656
## vs    0.66 -0.81 -0.71 -0.72  0.440 -0.55  0.745  1.00  0.168  0.21 -0.570
## am    0.60 -0.52 -0.59 -0.24  0.713 -0.69 -0.230  0.17  1.000  0.79  0.058
## gear  0.48 -0.49 -0.56 -0.13  0.700 -0.58 -0.213  0.21  0.794  1.00  0.274
## carb -0.55  0.53  0.39  0.75 -0.091  0.43 -0.656 -0.57  0.058  0.27  1.000
```

``` r
print(corr2$P, digits = 2)
```

```
##          mpg     cyl    disp      hp    drat      wt    qsec      vs      am
## mpg       NA 6.1e-10 9.4e-10 1.8e-07 1.8e-05 1.3e-10 1.7e-02 3.4e-05 2.9e-04
## cyl  6.1e-10      NA 1.8e-12 3.5e-09 8.2e-06 1.2e-07 3.7e-04 1.8e-08 2.2e-03
## disp 9.4e-10 1.8e-12      NA 7.1e-08 5.3e-06 1.2e-11 1.3e-02 5.2e-06 3.7e-04
## hp   1.8e-07 3.5e-09 7.1e-08      NA 1.0e-02 4.1e-05 5.8e-06 2.9e-06 1.8e-01
## drat 1.8e-05 8.2e-06 5.3e-06 1.0e-02      NA 4.8e-06 6.2e-01 1.2e-02 4.7e-06
## wt   1.3e-10 1.2e-07 1.2e-11 4.1e-05 4.8e-06      NA 3.4e-01 9.8e-04 1.1e-05
## qsec 1.7e-02 3.7e-04 1.3e-02 5.8e-06 6.2e-01 3.4e-01      NA 1.0e-06 2.1e-01
## vs   3.4e-05 1.8e-08 5.2e-06 2.9e-06 1.2e-02 9.8e-04 1.0e-06      NA 3.6e-01
## am   2.9e-04 2.2e-03 3.7e-04 1.8e-01 4.7e-06 1.1e-05 2.1e-01 3.6e-01      NA
## gear 5.4e-03 4.2e-03 9.6e-04 4.9e-01 8.4e-06 4.6e-04 2.4e-01 2.6e-01 5.8e-08
## carb 1.1e-03 1.9e-03 2.5e-02 7.8e-07 6.2e-01 1.5e-02 4.5e-05 6.7e-04 7.5e-01
##         gear    carb
## mpg  5.4e-03 1.1e-03
## cyl  4.2e-03 1.9e-03
## disp 9.6e-04 2.5e-02
## hp   4.9e-01 7.8e-07
## drat 8.4e-06 6.2e-01
## wt   4.6e-04 1.5e-02
## qsec 2.4e-01 4.5e-05
## vs   2.6e-01 6.7e-04
## am   5.8e-08 7.5e-01
## gear      NA 1.3e-01
## carb 1.3e-01      NA
```

We could also use these functions with two matrices, to obtain the correlations of each column in one matrix with each column in the other


``` r
# Correlation matrix from mtcars
x <- mtcars[1:3]
y <- mtcars[4:6]
cor(x, y)
```

```
##              hp       drat         wt
## mpg  -0.7761684  0.6811719 -0.8676594
## cyl   0.8324475 -0.6999381  0.7824958
## disp  0.7909486 -0.7102139  0.8879799
```



#Relationship to slope in linear regression

The correlation coefficient and slope in linear regression bear some similarities, as both describe how Y changes when X is changed. However, in correlation, we have two random variables, while in regression we have Y random, X fixed and Y is regarded as a function of X (not the other way round).

Without neglecting their different meaning, it may be useful to show the algebraic relationship between the correlation coefficient and the slope in regression. Let's simulate a dataset with two variables, coming from a multivariate normal distribution, with means respectively equal to 10 and 2, and variance-covariance matrix of:


``` r
library(MASS)
cov <- matrix(c(2.20, 0.48, 0.48, 0.20), 2, 2)
cov
```

```
##      [,1] [,2]
## [1,] 2.20 0.48
## [2,] 0.48 0.20
```

We use the 'mvrnomr()' function to generate the dataset.


``` r
set.seed(1234)
dataset <- data.frame( mvrnorm(n=10, mu = c(10, 2), Sigma = cov) )
names(dataset) <- c("X", "Y")
dataset
```

```
##            X        Y
## 1  11.756647 2.547203
## 2   9.522180 2.199740
## 3   8.341254 1.862362
## 4  13.480005 2.772031
## 5   9.428296 1.573435
## 6   9.242788 1.861756
## 7  10.817449 2.343918
## 8  10.749047 2.451999
## 9  10.780400 2.436263
## 10 11.480301 1.590436
```

The correlation coefficient and slope are as follows:


``` r
r <- with(dataset, cor(X, Y))
b1 <- coef( lm(Y ~ X, data=dataset) )[2]
r
```

```
## [1] 0.6372927
```

``` r
b1
```

```
##         X 
## 0.1785312
```

The equation for the slope is:

$$b_1 = \frac{ \sum_{i = 1}^n \left[ ( X-\mu_X )( Y-\mu_Y )\right] }{ \sigma^2_X } $$

From there, we see that:

$$ r = b_1 \frac{\sigma_X}{ \sigma_Y }$$

and:

$$ b_1 = r \frac{\sigma_Y}{\sigma_X}$$

Indeed:


``` r
sigmaX <- with(dataset, sd(X) )
sigmaY <- with(dataset, sd(Y) )
b1 * sigmaX / sigmaY 
```

```
##         X 
## 0.6372927
```

``` r
r * sigmaY / sigmaX
```

```
## [1] 0.1785312
```

It is also easy to see that the correlation coefficient is the slope of regression of standardised Y against standardised X:


``` r
Yst <- with(dataset, scale(Y, scale=T) )
summary( lm(Yst ~ I(scale(X, scale = T) ), data = dataset) )
```

```
## 
## Call:
## lm(formula = Yst ~ I(scale(X, scale = T)), data = dataset)
## 
## Residuals:
##       Min        1Q    Median        3Q       Max 
## -0.082006 -0.067143 -0.036850  0.009214  0.237923 
## 
## Coefficients:
##                         Estimate Std. Error t value Pr(>|t|)  
## (Intercept)            1.009e-16  3.478e-02   0.000   1.0000  
## I(scale(X, scale = T)) 1.785e-01  7.633e-02   2.339   0.0475 *
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.11 on 8 degrees of freedom
## Multiple R-squared:  0.4061,	Adjusted R-squared:  0.3319 
## F-statistic: 5.471 on 1 and 8 DF,  p-value: 0.04748
```


#Intra-class correlation (ICC)

It describes how strongly units in the same group resemble each other. While it is viewed as a type of correlation, unlike most other correlation measures it operates on data structured as groups, rather than data structured as paired observations. The intra-class correlation coefficient is:

`$$IC = {\displaystyle {\frac {\sigma _{\alpha }^{2}}{\sigma _{\alpha }^{2}+\sigma _{\varepsilon }^{2}}}.}$$`

where `\(\sigma _{\alpha }^{2}\)` is the variance between groups and `\(\sigma _{\varepsilon }^{2}\)` is the variance within a group (better, the variance of one observation within a group). The sum of those two variances is the total variance of observations. In words, the intra-class correlation coefficient measures the joint variability of subjects in the same group (that relates on how groups are different from one another), with respect to the total variability of observations. If subjects in one group are very similar to one another (small `\(\sigma_{\varepsilon}\)`) but groups are very different (high `\(\sigma_{\alpha}\)`), the ICC is very high.

The existence of grouping of residuals is very important in ANOVA, as it means that independence is violated, which calls for the use of mixed models. 

But ... this is a totally different story ...






