---
title: "Experimental methods in agriculture"
author: "Andrea Onofri and Dario Sacco"
date: "Update: v. 1.001 (2022-10-08), compil. 2022-11-23"
#site: bookdown::bookdown_site
documentclass: book
citation_package: natbib
bibliography: [statBook.bib]
biblio-style: apalike
link-citations: yes
delete_merged_file: true
always_allow_html: yes
twitter-handle: onofriandreapg
cover-image: coversmall.png
description: "Experimental methods in agriculture: a tutorial book with R"
url: 'http\://www.casaonofri.it/images'
---

# Introduction {-}

Placeholder


## Aims {-}
## How this book is organised  {-}
## Statistical software {-}
## The authors {-}

<!--chapter:end:index.Rmd-->


# Science and pseudoscience

Placeholder


## Science needs data
## Not all data support science
## Good data is based on good 'methods'
## The 'falsification' principle
## Trying to falsify a result
## The basic principles of experimental design
### Control
### Replication
### Randomisation
## Invalid experiments
### Lack of good control
### 'Confounding' and spurious correlation
### Lack of true-replicates or careless randomisation
## How can we assess whether the data is valid?
## Conclusions
## Further readings

<!--chapter:end:01-Eng_introBiometry.Rmd-->


# Designing experiments

Placeholder


## The elements of research
## Hypothesis and objectives
## The experimental treatments
### Factorial experiments
### The control
## The experimental units
## The allocation of treatments
## The variables
### Nominal variables
### Ordinal variables
### Count and ratio variables
### Continuous variables
### Sensory and visual assessments
## Setting up a field experiment
### Selecting the field
### Selecting the units within the field
### Number of replicates
### The field map
### The experimental lay-out
#### Completely randomised design (CR)
#### Randomised complete block design (RCBD)
#### Latin square design
#### Split-plot and strip-plot designs
## Conclusions
## Further readings

<!--chapter:end:02-Eng_ResProject.Rmd-->


# Describing the observations

Placeholder


## Quantitative data
### Statistics of location
### Statistics of spread
### Summing the uncertainty
### Relationship between quantitative variables
## Nominal data
### Distributions of frequencies
### Descriptive stats for distributions of frequencies
### Contingency tables
### Independence
## Descriptive stats with R
## Graphical representations
## Further reading

<!--chapter:end:03-Eng_StatisticaDescrittiva.Rmd-->


# Modeling the experimental data

Placeholder


## Deterministic models
## Stochastic models
### Probability functions
### Density functions
### The Gaussian PDF and CDF
## A model with two components
## And so what?
## Monte Carlo methods to simulate an experiment
## Data analysis and model fitting
## Some words of warning
## Further readings

<!--chapter:end:04-Eng_ModelliSperimentazione.Rmd-->


# Estimation of model parameters

Placeholder


## Example 1: a concentration value
### The empirical sampling distribution
### A theoretical sampling distribution
### The frequentist confidence interval
## Example 2: a proportion
## Conclusions
## Further readings

<!--chapter:end:05-Eng_InferenzaStatistica.Rmd-->


# Making Decisions under uncertainty

Placeholder


## Comparing sample means: the Student's t-test
### The dataset
### Monte Carlo simulation
### A formal solution
### The t test with R
## Comparing proportions: the $\chi^2$ test
## Correct interpretation of the P-value
## Conclusions
## Further readings

<!--chapter:end:06-Eng_TestIpotesi.Rmd-->


# One-way ANOVA models

Placeholder


## Comparing herbicides in a pot-experiment
## Data description
## Model definition
### Parameterisation
### Treatment constraint
### Sum-to-zero constraint
## Basic assumptions
## Fitting ANOVA models by hand
### Parameter estimation
### Residuals
### Standard deviation $\sigma$
### SEM and SED
### Variance partitioning
### Hypothesis testing
## Fitting ANOVA models with R
## Expected marginal means
## Conclusions
## Further readings

<!--chapter:end:07-Eng_oneWayANOVA.Rmd-->


# Checking for the basic assumptions

Placeholder


## Outlying observations
## The inspection of residuals
### Plot of residuals against expected values
### QQ-plot
## Formal hypotesis testing
## What do we do, in practice?
## Correcting measures
### Removing outliers
### Stabilising transformations
## Examples with R
## Example 1
## Example 2
## Other possible approaches
## Further readings

<!--chapter:end:08-Eng_AssunzioniBase.Rmd-->

# Contrasts and multiple comparison testing


In Chapter 7 we have shown how to fit an ANOVA model to the observed data, which is very often the first step of data analysis, with two fundamental aims:

1. determining the variance of the residual (unexplained) effects, that is the basis of statistical inference;
2. test the hypothesis of no treatment effects (test of homogeneity), by using the F-ratio.

In Chapter 8, we sow that, before trusting the results of every linear model fit, we need to make sure that the basic assumptions for linear models are valid, by a thorough inspection of residuals. This is a fundamental step and should never, ever be neglected.

After the inspection of model residuals and after the adoption of possible correcting measures, wherever necessary, the process of data analysis must go ahead. Indeed, rejecting the null hypothesis of no treatment effects implies accepting the alternative, i.e. that there is, at least, one treatment level that produced a significant effect on the experimental units. Such conclusion is important, but it very rarely answers all our research questions; indeed, taking whatever pair of treatments A and B, we might ask:
 
1. is the effect of A different from the effect of B?
2. is A better/worse than B?
3. what is the difference between A and B?

In other words, for any pairs of treatments, we might be willing to assess the existence of significant differences (question 1), their sign (positive/negative; question 2) and their size (**effect size**; question 3). According to the English scientist John Tukey, the first question is 'foolish' as there are no two treatments whose effects can be regarded as totally equal^[All we know about the world teaches us that the effects of A and B are always different in some decimal place for any A and B. Thus asking "are the effects different?" is foolish (John Tukey).], while the other two questions, particularly the third one, are much more relevant.

In order to ask the above questions, we can apply **linear contrasts** or **Multiple Comparison Procedures** (MCP). We will explore these methods by using the 'mixture.csv' dataset, which we have started analysing in Chapters 7 and 8.

## Back to the 'mixture' example

Let me remind once more that we are dealing with a pot experiment, where we compared four herbicide treatments in terms of their activity against an important weed species (*Solanum nigrum*). The experiment is completely randomised, with four replicates and the observed response is the weight of treated plants in each pot, four weeks after the treatment. One of the four treatments is the untreated control, while the other three treatments consist of two herbicides used either alone or in mixture.

Let's load the data, fit an ANOVA model and get the least squares means, as we did in Chapter 7. In Chapter 8, we have demonstrated that this model is valid and there are no evident deviations from the basic assumptions for linear models.

\vspace{12pt}

```r
repo <- "https://www.casaonofri.it/_datasets/"
file <- "mixture.csv"
pathData <- paste(repo, file, sep = "")
dataset <- read.csv(pathData, header = T)
model <- lm(Weight ~ Treat, data=dataset)

library(emmeans)
treat.means <- emmeans(model, ~Treat)
treat.means
```

```
##  Treat           emmean   SE df lower.CL upper.CL
##  Metribuzin__348   9.18 1.96 12     4.91     13.4
##  Mixture_378       5.13 1.96 12     0.86      9.4
##  Rimsulfuron_30   16.86 1.96 12    12.59     21.1
##  Unweeded         26.77 1.96 12    22.50     31.0
## 
## Confidence level used: 0.95
```


## Linear contrasts

In statistics, a **contrast** is a linear combination of means or, more generally, model parameters, where the coefficients add up to zero. In the following example, I have built a linear contrast with the means of our example:

$$k = \frac{1}{3} \cdot 9.18 + \frac{1}{3} \cdot 5.13 + \frac{1}{3} \cdot 16.86 - 1 \cdot 26.77  = -16.385$$



As we see, the sum of coefficients is 0:

$$\frac{1}{3} + \frac{1}{3} + \frac{1}{3} - 1 = 0$$

This contrast has a very clear biological meaning, as it provides an estimate for the difference between the mean weight for treated pots and the mean weight for untreated pots. The result is -16.39; it provides the answers for all the three questions above. Indeed:

1. there is a difference between herbicide treatments (on average) and the untreated control;
2. the difference is negative, meaning that the weight of the weed in treated pots is lower than the weight in untreated pots;
3. the effect size is -16.39 grams per pot.

However, we should never forget that the uncertainty about population means propagates to contrasts. The observed value of -16.39 is a point estimator of the population difference, but we need to quantify the uncertainty by using interval estimation.


### The variance of contrasts

We have already mentioned how the errors propagate when we 'combine' random variables; the basic principle is that the variance of a linear combination of independent estimates is equal to a linear combination of their variances, according to:


$$\textrm{var}(A \mu_1 + B \mu_2) = A ^2 \cdot \textrm{var}(\mu_1)  + B ^2 \cdot \textrm{var}(\mu_2)$$

where A and B are contrast coefficients, $\mu_1$ and $\mu_2$ are the estimates (means, in this case). The standard errors of the four means are equal to 1.9588 and, therefore, the variances are $1.9588^2 = 3.83703$, which are combined as shown below:


$$\textrm{var}(k) = \left( \frac{1}{3} \right)^2 \cdot 3.83703  +  \left( \frac{1}{3}\right)^2 \cdot 3.83703 + \left( \frac{1}{3}  \right)^2 \cdot 3.83703 + \left( - 1 \right)^2 \cdot 3.83703  = 5.11604$$



The standard deviation for the contrast (i.e. the standard error) is:

$$SE(k) = \sqrt{5.11604} = 2.261866$$

Here we go. We have a point estimate for the contrast (-16.4) and a standard error (2.26), which we can use to build a confidence interval, as shown in Chapter 5. However, we might also like to answer the following question: is it possible that the population contrast is 0 (no difference between treated and untreated pots) and the observed value was just due to random sampling fluctuations?

Of course, this is possible: we have already seen that sample-to-sample variation can be rather high. We can translate our question into a null hypothesis:


$$H_0: \kappa = 0$$

we use the greek letter $\kappa$ to refer to the real population value for the contrast, which we estimate by using the observed value $k$. In order to decide whether the null is true, in spite of the observed $k \neq 0$, we should contemporarily consider the estimate and its uncertainty. As we did in a previous chapter, we use the T statistics, i.e. the ratio between the estimate and its standard error:

$$T = \frac{k}{ES(k)} = \frac{-16.385}{2.261866} = -7.244$$
Let's assume that the null is true; the observed T values should 'fluctuate' around 0, by following a Student's t distribution with a number of degrees of freedom equal to that of the residual error in ANOVA. We could empirically see this by using Monte Carlo simulation, but we will not do so, for the sake of brevity.

Therefore, we can use the `pt()` function to find the probability that $t < -7.244$ and $t > 7.244$. We have:


```r
Tval <- -16.385 / 2.261866
2 * pt(Tval, 12, lower.tail = T)
```

```
## [1] 1.023001e-05
```

We see that, if the null is true and we repeat the experiment for a high number of times, we have only one possibility out of 100,000 to obtain such a high T, in absolute value. Thus we reject the null and conclude that:

1. on average, herbicide treatments produce a significant effect;
2. such an effects results in the suppression of weed growth (the sign is negative);
3. the difference in weight is -16.385 (SE = 2.26) and the evidence is strong enough to support the conclusion that such a difference, at the population level, is not 0.


### Testing linear contrasts with R

The main challenge for a scientist is to translate research questions into a set of appropriate contrasts. For our example, we might consider the following contrasts:

1. untreated vs. treated (on average)
2. mixture vs. single herbicides (on average)
3. mixture vs. rimsulfuron
4. mixture vs. metribuzin

Writing the above contrasts by hand is very tedious and, thus, we use R. First of all, we need to prepare one vector of coefficients for each contrast. For the first contrast, the vector is as above:


```r
k1 <- c(1/3, 1/3, 1/3, -1)
```

For the other three contrasts, the vectors are:


```r
k2 <- c(1/2, -1, 1/2, 0)
k3 <- c(0, -1, 1, 0)
k4 <- c(1, -1, 0, 0)
```

With these coefficients, we prepare a list:


```r
K <- list(k1, k2, k3, k4)
```

In the end, we use the `contrast()` function in the 'emmeans' package and pass the following arguments:

1. the means, obtained by using the 'emmeans()' function (see above)
2. the list of contrasts, as the 'method' argument
3. the type of adjustment (we will talk about this later, so far, please, simply use the command as shown in the box below)

\small


```r
contrast(treat.means, method = K, adjust="none")
```

```
##  contrast                                                      estimate   SE df t.ratio p.value
##  c(0.333333333333333, 0.333333333333333, 0.333333333333333, -1   -16.39 2.26 12  -7.244  <.0001
##  c(0.5, -1, 0.5, 0)                                                7.89 2.40 12   3.289  0.0065
##  c(0, -1, 1, 0)                                                   11.73 2.77 12   4.235  0.0012
##  c(1, -1, 0, 0)                                                    4.05 2.77 12   1.461  0.1697
```

\normalsize

We see that all contrasts are significantly different from zero, except the fourth one.


## Pairwise comparisons

Translating research questions into contrasts may be sort of an art and, very often, it marks the difference between ordinary and excellent papers. However, there are some sets of contrasts that are repeatedly used (and often abused) in several circumstances, such as the so-called *pairwise comparisons*. These contrasts consist of testing the differences between pairs of means, according to two possible situations:

1. all pairwise-comparisons (Tukey's method)
2. comparisons with a control (Dunnett's method)

The first situation implies a very high number of contrasts that is equal to $k = n \times (n - 1) /2$, where $n$ is the number of means. Accordingly, with four means we have six contrasts and, luckily, R provides the predefined list of coefficients, by assigning the value "pairwise" to the argument 'method', as shown below:


\footnotesize


```r
# Pairwise contrasts
contrast(treat.means, adjust="none", method="pairwise")
```

```
##  contrast                         estimate   SE df t.ratio p.value
##  Metribuzin__348 - Mixture_378        4.05 2.77 12   1.461  0.1697
##  Metribuzin__348 - Rimsulfuron_30    -7.68 2.77 12  -2.774  0.0168
##  Metribuzin__348 - Unweeded         -17.60 2.77 12  -6.352  <.0001
##  Mixture_378 - Rimsulfuron_30       -11.73 2.77 12  -4.235  0.0012
##  Mixture_378 - Unweeded             -21.64 2.77 12  -7.813  <.0001
##  Rimsulfuron_30 - Unweeded           -9.91 2.77 12  -3.578  0.0038
```
\normalsize

The second situation implies a lower number of contrasts and we can set the 'method' argument to "dunnett". However, we need to be careful, because R compares all means against the first in alphabetical order, which may not be what we are looking for. For example, in our case, we might like to compare all treatments with the herbicide mixture, which is the second in alphabetical order. Therefore, we set the argument 'ref' to 2.

\footnotesize


```r
# Dunnett contrasts
contrast(treat.means, adjust="none", method="dunnett", ref = 2)
```

```
##  contrast                      estimate   SE df t.ratio p.value
##  Metribuzin__348 - Mixture_378     4.05 2.77 12   1.461  0.1697
##  Rimsulfuron_30 - Mixture_378     11.73 2.77 12   4.235  0.0012
##  Unweeded - Mixture_378           21.64 2.77 12   7.813  <.0001
```
\normalsize

We may have noted that the above contrasts do not fully answer our questions about the effect sizes; indeed, we have a point estimate with standard error, but we do not have explicit confidence intervals. To get them, we can assign the result of the `contrast()` function to a variable and explore it by using the 'confint' method.


```r
# Confidence intervals
con <- contrast(treat.means, adjust="none", 
                method="dunnett", ref = 2)
confint(con)
```

```
##  contrast                      estimate   SE df lower.CL upper.CL
##  Metribuzin__348 - Mixture_378     4.05 2.77 12    -1.99     10.1
##  Rimsulfuron_30 - Mixture_378     11.73 2.77 12     5.70     17.8
##  Unweeded - Mixture_378           21.64 2.77 12    15.61     27.7
## 
## Confidence level used: 0.95
```


## Letter display

We mentioned that effect sizes provide full information about the results of contrasts, by which we can answer all questions above. However, reporting effects sizes for pairwise comparisons with a high number of means may be impractical. Therefore, we can use the so-called **letter display**, that consists of augmenting the table of means with significance letters, so that means followed by different letters are significantly different from each other, for a certain predefined protection level $\alpha$, usually equal to 0.05.

A letter display can be easily added by hand, according to the following procedure:

1. sort the means in increasing/decreasing order
2. start from the uppermost mean and add the A letter to this mean and to all the following means, when the difference with the first one is not significant
3. go on to the second mean and add the B letter to this mean and to all the following means, when the difference with the second one is not significant
4. go on like this, until all means have got their letters

The above procedure works well with balanced experiments, although we might prefer using the more general procedure in R, as implemented in the 'multcomp' package, which we need to install, together with the 'multcompView' package. The function is named `cld()` and requires the means and the method of adjustment (see next section). We also provide a third argument, that is 'Letters = LETTERS' (be careful with the syntax, relating to small and capital letters) to use capital letters display instead of the default number display


```r
multcomp::cld(treat.means, adjust="none", Letters=LETTERS)
```

```
##  Treat           emmean   SE df lower.CL upper.CL .group
##  Mixture_378       5.13 1.96 12     0.86      9.4  A    
##  Metribuzin__348   9.18 1.96 12     4.91     13.4  A    
##  Rimsulfuron_30   16.86 1.96 12    12.59     21.1   B   
##  Unweeded         26.77 1.96 12    22.50     31.0    C  
## 
## Confidence level used: 0.95 
## significance level used: alpha = 0.05 
## NOTE: Compact letter displays can be misleading
##       because they show NON-findings rather than findings.
##       Consider using 'pairs()', 'pwpp()', or 'pwpm()' instead.
```

The letter display is handy, but it can only answer questions about the significance of differences, while it gives no hints about the direction and size of differences. For this reason, using the letter display is often regarded as a poor practice in the presentation of experimental results. 


## Multiplicity correction

Experiments may involve a very high number of contrasts and, therefore, a high number of hypotheses is simultaneously tested. Let's consider one of those hypotheses and imagine that the null is rejected with $P = 0.04$, which would be the **comparisonwise error rate** ($P_c$), i.e. the probability of wrong rejection. If we have a family of *n* such simultaneous contrasts where the null is always rejected at $P = 0.04$, we could define the probability of wrong rejection for at least one of those hypotheses, the so-called **familywise error rate** ($P_f$). We can get a sense that the familywise error rate is higher than the comparisonwise error rate, especially when $n$ is high.

It is important to know the relationship between $P_c$ and $P_f$. We should consider that the probability of correct rejection for each hypothesis is $1 - P_c$ and, for $n$ hypotheses, the probability of no wrong rejections is $(1 - P_c)^n$ (joint probability of independent events). The probability of having, at least, one wrong rejection (complementary event) is calculated as:

$$P_f = 1 - (1 - P_c)^n$$
What does this mean? In practice, if we have $n = 10$ contrasts, and each one in rejected at $P_c = 0.04$, the probability that we make at least one wrong decision is:


```r
1 - (1 - 0.04)^10
```

```
## [1] 0.3351674
```

This is generally known as the **multiplicity problem**: whenever we make a high number of simultaneous inferences, the probability that we make at least one mistake (wrong rejection) is much higher than the error rate for each single test. In some cases, the multiplicity problem can be particularly concerning, for example, when:

1. we want to avoid that one treatment is wrongly excluded from the group of the best ones. In this case, we take the highest ranking treatment and compare it to all the others (Dunnett type contrast); when the number of treatments is high, the probability that at least one treatment is wrongly excluded from the lot of the best ones may be very high;
2. we want to avoid false positives. Wrong rejections are false positives and their number may be high if we do not consider the multiplicity problem;
3. we want to draw conclusions for all the simultaneous set of contrasts. For example, we have used a letter display and want to state that 'treatments followed by different letters are significantly different (P < 0.05)'. In this case, the conclusion relates to the whole set of comparisons and the comparisonwise error rate is clearly invalid.

There is rather a wide consensus in literature that we should always account for the multiplicity problem in our pairwise comparisons, which means that we should take decisions based on the familywise error rate, instead of the comparisonwise error rate. That means that we should reject the null when $P_f < 0.05$ and not when $P_c < 0.05$, which implies that we correct the observed P-value, based on the number of simultaneous inferences.

And, how do we correct? The most natural method is to use the above mentioned relationship between $P_c$ and $P_f$, which is know as the Sidak's correction. In the box below, we perfom this correction either by hand, or by using the appropriate argument to the `contrast()` function in R. Please, remember that, four our example, the number of simultaneous contrasts is six.

\scriptsize


```r
# Correction by hand (six simultaneous contrasts)
con <- contrast(treat.means, method = "pairwise", adjust = "none")
Pc <- as.data.frame(con)[,6]
Pf <- 1 - (1 - Pc)^6
Pf
```

```
## [1] 6.722991e-01 9.683462e-02 2.190543e-04 6.923077e-03 2.869757e-05 2.255183e-02
```

```r
# With R
contrast(treat.means, method = "pairwise", adjust = "sidak")
```

```
##  contrast                         estimate   SE df t.ratio p.value
##  Metribuzin__348 - Mixture_378        4.05 2.77 12   1.461  0.6723
##  Metribuzin__348 - Rimsulfuron_30    -7.68 2.77 12  -2.774  0.0968
##  Metribuzin__348 - Unweeded         -17.60 2.77 12  -6.352  0.0002
##  Mixture_378 - Rimsulfuron_30       -11.73 2.77 12  -4.235  0.0069
##  Mixture_378 - Unweeded             -21.64 2.77 12  -7.813  <.0001
##  Rimsulfuron_30 - Unweeded           -9.91 2.77 12  -3.578  0.0226
## 
## P value adjustment: sidak method for 6 tests
```

\normalsize

We see that, applying this type of multiplicity correction, the second contrast is no longer significant. An alternative, simpler and much more widespread correction procedure is the so-called Bonferroni's correction, that is based on the following heuristic:

$$\alpha_E = \alpha_C \cdot k$$



```r
Pc * 6
```

```
## [1] 1.018071e+00 1.009900e-01 2.190743e-04 6.943132e-03 2.869792e-05 2.276671e-02
```

```r
contrast(treat.means, method = "pairwise", adjust = "bonferroni")
```

```
##  contrast                         estimate   SE df t.ratio p.value
##  Metribuzin__348 - Mixture_378        4.05 2.77 12   1.461  1.0000
##  Metribuzin__348 - Rimsulfuron_30    -7.68 2.77 12  -2.774  0.1010
##  Metribuzin__348 - Unweeded         -17.60 2.77 12  -6.352  0.0002
##  Mixture_378 - Rimsulfuron_30       -11.73 2.77 12  -4.235  0.0069
##  Mixture_378 - Unweeded             -21.64 2.77 12  -7.813  <.0001
##  Rimsulfuron_30 - Unweeded           -9.91 2.77 12  -3.578  0.0228
## 
## P value adjustment: bonferroni method for 6 tests
```

Both the procedures, particularly the second one, are rather conservative, in the sense that they do not account for the fact that contrasts are always correlated and, therefore, overestimated $P_f$ values are furnished. Other correcting procedures exist (e.g., Holm, Hochberg, Hommel), but they are all more or less conservative.

In recent times, a group of American scientists has found the way of accounting for the correlation between contrasts, based on the multivariate Student's t distribution (Bretz et al., 2011). Their method is the default one in R and it is incorporated in the `contrast()` function; we simply need to remove the 'correct' argument:

\small


```r
contrast(treat.means, method="pairwise")
```

```
##  contrast                         estimate   SE df t.ratio p.value
##  Metribuzin__348 - Mixture_378        4.05 2.77 12   1.461  0.4885
##  Metribuzin__348 - Rimsulfuron_30    -7.68 2.77 12  -2.774  0.0698
##  Metribuzin__348 - Unweeded         -17.60 2.77 12  -6.352  0.0002
##  Mixture_378 - Rimsulfuron_30       -11.73 2.77 12  -4.235  0.0055
##  Mixture_378 - Unweeded             -21.64 2.77 12  -7.813  <.0001
##  Rimsulfuron_30 - Unweeded           -9.91 2.77 12  -3.578  0.0173
## 
## P value adjustment: tukey method for comparing a family of 4 estimates
```

```r
contrast(treat.means, method="dunnett")
```

```
##  contrast                         estimate   SE df t.ratio p.value
##  Mixture_378 - Metribuzin__348       -4.05 2.77 12  -1.461  0.3711
##  Rimsulfuron_30 - Metribuzin__348     7.68 2.77 12   2.774  0.0442
##  Unweeded - Metribuzin__348          17.60 2.77 12   6.352  0.0001
## 
## P value adjustment: dunnettx method for 3 tests
```

\normalsize

Before concluding this part, I would like to put forward the idea that also confidence intervals may be appropriately enlarged to respect familywise error rates. However, we will not explore such an issue in this book.

## Multiple comparisons with transformed data

In the previous chapter, we have seen that, sometimes, we need to transform the data to respect the basic assumptions for linear models. For example, with the 'insects.csv' dataset in the previous chapter we have performed a logarithmic transformation, which we show again here.


```r
repo <- "https://www.casaonofri.it/_datasets/"
file <- "insects.csv"
pathData <- paste(repo, file, sep = "")
dataset <- read.csv(pathData, header = T)
modt <- lm(log(Count) ~ Insecticide, data = dataset)
```

When we use the `emmeans()` function in the 'emmeans' package, we get the means in the logarithmic scale.


```r
library(emmeans)
treatMeans <- emmeans(modt, ~Insecticide)
treatMeans
```

```
##  Insecticide emmean    SE df lower.CL upper.CL
##  T1            6.34 0.178 12     5.96     6.73
##  T2            5.81 0.178 12     5.43     6.20
##  T3            3.95 0.178 12     3.56     4.34
## 
## Results are given on the log (not the response) scale. 
## Confidence level used: 0.95
```

In some instances, this may not be a problem, although there might be cases where we seek for the exact number of insect eggs in each leaf. Clearly, such an information is missing in the above analysis.

The best suggestion is to back-transform the above means by using the inverse transformation, e.g.:


$$e^{6.34} = 566.7963$$

Getting the back-trasfomed means for all treatments is easy, by using the `emmeans()` function and setting the 'transform' argument to "response", as shown below.


```r
retroMedie <- emmeans(modt, ~Insecticide, regrid = "response")
retroMedie
```

```
##  Insecticide response     SE df lower.CL upper.CL
##  T1             568.6 101.01 12    348.5      789
##  T2             335.1  59.54 12    205.4      465
##  T3              51.9   9.22 12     31.8       72
## 
## Confidence level used: 0.95
```

What are these back-transformed means? Expectedly, we can see that they are different from the arithmetic means on the original (untrasformed) scale:


```r
emmeans(lm(Count ~ Insecticide, data = dataset), ~Insecticide)
```

```
##  Insecticide emmean   SE df lower.CL upper.CL
##  T1           589.8 62.7 12    453.1      726
##  T2           357.4 62.7 12    220.7      494
##  T3            56.6 62.7 12    -80.1      193
## 
## Confidence level used: 0.95
```

Indeed, back-transformed means are lower than arithmetic means and they are regarded as estimators of the medians in the original scale, which are not influenced by the transformation. Indeed, we should think that monotonic transformations do not alter the ordering of observations and, thus, the central value remains the same. Consequently, when we report back-transformed means we are indeed reporting an estimate of the medians of the populations that generated our samples. However, estimating the medians instead of the means may not be a bad idea, considering that the populations are non-normal and might be asymmetric.

## What about the traditional MCPs?

We have seen that the best practice to compare means is:

1. express the relevant differences by using contrasts
2. estimate those differences and their standard errors
3. test the null hypothesis that differences are zero and express the result by using familywise error rates.

This process is conceptually different from the traditional multiple comparison procedures, which were very much in fashion before the 90s of the 20th century. MCPs were based on the determination of critical differences: whenever the observed difference was higher than the critical difference it was deemed significant. We can list the following MCPs:

1. Fisher's Least Significant Difference (LSD)
2. Tukey's Honest Significant Difference (HSD)
3. Dunnett's test
4. Duncan's test
5. Newman-Keuls' test
6. Tukey's MCP

For balanced experiments, the Fisher's LSD corresponds to pairwise contrasts with no multiplicity correction, while the Tukey's HSD and Dunnett's test involve the multiplicity correction respectively for all pairwise comparisons and for the comparisons against a control. Therefore, while the Fisher's LSD adopts a comparisonwise error rate, the HSD and Dunnett's test adopt a familywise protection rate.

All the other tests adopt some mechanism by which the critical difference is increased to account for a certain degree of multiplicity, but they do not adopt either a comparisonwise or a familywise error rate. They stay in the middle and, for this reason, their usage should be discouraged, although they are very much used in practice.

## Some practical suggestions

Pairwise contrasts and MCPs have been often abused in previous years and, still today, debates with editors and reviewers are very common. We would like to put forward a few suggestions, which might be useful in the way to scientific publication.

1. It is strongly advised that pairwise contrasts are never used when the experimental treatment is represented by a quantitative series of rates, doses, times or whatever. In this case, asking whether there is a significant difference between the response at different doses may be illogical: indeed, even though we selected a few doses to include in the experiment, we are usually interested in the responses across the whole range of possible doses. In this setting, fitting a response curve is much more respectful of our aims and data (see later, in this book).
2. Consider if you want to control the comparisonwise or the familywise error rate. The former might be preferred when only a few comparisons or contrasts are to be tested, each having a strong biological relevance (single-contrast problems), while the latter should be preferred in the case of a relatively high number of simultaneous tests, especially when an overall conclusion tends to be wrong when at least one single test is wrong.
3. If you just want to control comparisonwise protection rate, do not apply any multiplicity correction. For balanced data, such an approach corresponds to using the Fisher's LSD in the traditional MCP setting.
4. If you want to control the familywise error rate, apply the appropriate multiplicity correcting measure and adjust the P-values accordingly. For balanced data, such an approach corresponds to using the Tukey HSD for all paairwise comparisons and to the Dunnett's test for the comparisons against a control.
5. Do not use Student–Newman–Keuls or Duncans' MRT, because they do not control either the familywise error rate, or the familywise error rate and do not yield a single critical difference for balanced data.


---

## Further readings

1. Hsu, J., 1996. Multiple comparisons. Theory and methods. Chapman and Hall.
2. Bretz, F., T. Hothorn, and P. Westfall. 2002, On Multiple Comparison Procedures in R. R News 2: 14-17.
3. Chew, V. 1976, Comparing treatment means: a compendium. Hortscience, 11(4), 348-357.
4. Cousens, R. 1988, Misinterpretetion of results in weed research through inappropriate use of statistics. Weed Research, 28, 281-289.

<!--chapter:end:09-Eng_ConfrontoMultiplo.Rmd-->


# Multi-way ANOVA models 

Placeholder


## Motivating example: a genotype experiment in blocks
## Model definition
## Model fitting by hand
## Model fitting with R
### Model checking
### Variance partitioning
## Another example: comparing working protocols

<!--chapter:end:10-Eng_MultiWayANOVAModels.Rmd-->


# Multi-way ANOVA models with interactions

Placeholder


## The 'interaction' concept
## Genotype by N interactions
### Model definition
### Model fitting by hand
### Model fitting with R
### Inferences and standard errors
### Expected marginal means
## Nested effects: maize crosses
### Model definition
### Parameter estimation
## Further readings

<!--chapter:end:11-Eng_AnovaDueLivelli.Rmd-->


# Simple linear regression

Placeholder


## Case-study: N fertilisation in wheat
## Preliminary analysis
## Definition of a linear model
## Parameter estimation
## Goodness of fit
### Graphical evaluation
### Standard errors for parameter estimates
### F test for lack of fit
### F test for goodness of fit and coefficient of determination
## Making predictions
## Further readings

<!--chapter:end:12-Eng_LinearRegression.Rmd-->


# A brief intro to mixed models

Placeholder


## Plots of different sizes
### Example 1: a split-plot experiment
#### Model definition
#### Model fitting with R
### Example 2: a strip-plot design
#### Model definition
#### Model fitting with R
## Subsampling designs
## Repeated measures in perennial crops
## Repeated experiments
## Further readings

<!--chapter:end:13-Eng_SplitStrip.Rmd-->


# Nonlinear regression

Placeholder


## Case-study: a degradation curve
## Model selection
## Parameter estimation
### Linearisation
### Approximation with a polynomial function
### Nonlinear least squares
## Nonlinear regression with R
## Checking the model
### Graphical analyses of residuals
### Approximate F test for lack of fit
### The coefficient of determination (R^2^)
## Stabilising transformations
## Making predictions
## Further readings

<!--chapter:end:14-Eng_NonLineare.Rmd-->


# Exercises

Placeholder


## Ch 1: Introduction to biometry
### Question 1
### Question 2
### Question 3
### Question 4
### Question 5
## Ch. 2: Designing experiments
### Excercise 1
### Exercise 2
### Exercise 3
## Ch. 3: describing the observations
### Exercise 1
### Exercise 2
### Exercise 3
## Ch. 4: modeling the experimental data 
### Exercise 1
### Exercise 2
### Exercise 3
### Exercise 4
### Exercise 5
### Exercise 6
## Ch. 5: Estimation of model parameters
### Exercise 1
### Exercise 2
### Exercise 3
### Exercise 4
## Ch. 6: making decisions under uncertainty
### Exercise 1
### Exercise 2
### Exercise 3
### Exercise 4
### Exercise 5
### Exercise 6
### Exercise 7
## Ch. 7 to 9: one-way ANOVA models
### Exercise 1
### Exercise 2
### Exercise 3
### Exercise 4
## Ch. 10: multy-way ANOVA models
### Exercise 1
### Exercise 2
### Exercise 3
## Ch. 11 and 12: multi-way ANOVA models with interactions
### Exercise 1
### Exercise 2
### Exercise 3
### Exercise 4
### Exercise 5
### Exercise 6
## Ch. 13: simple linear regression
### Exercise 1
### Exercise 2
## Ch. 14: nonlinear regression
### Exercise 1
### Exercise 2
### Exercise 3
### Exercise 4
### Exercise 5
### Exercise 6
### Exercise 7

<!--chapter:end:15-Eng_Exercises.Rmd-->


# APPENDIX: A very gentle introduction to R

Placeholder


## What is R?
## Installing R and moving the first steps
## Assignments
## Data types and data objects
## Matrices
## Dataframes
## Working with objects
## Expressions, functions and arguments
## A few useful functions
## Extractors
## Reading external data
## Simple R graphics
## Further readings 

<!--chapter:end:16-Eng_IntroduzioneR.Rmd-->

