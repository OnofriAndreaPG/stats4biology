---
title: 'Analysing seed germination and emergence data with R (a tutorial). Part 7'
author: "Andrea Onofri"
date: 2022-01-18
slug: 'Time_to_event_models'
categories:
  - R
  - 'Time_to_event_models'
tags:
  - R
  - 'Time_to_event_models'
  - 'Seed_germination'
  - drcte
  - drcSeedGerm
archives:
  - 2022
---



This is a follow-up post. If you are interested in other posts of this series, please go to: [https://www.statforbiology.com/tags/drcte/](https://www.statforbiology.com/tags/drcte/). All these posts expand on a paper that we have recently published in the Journal 'Weed Science'; please follow [this link](https://doi.org/10.1017/wsc.2022.8) to the paper.

# Exploring the results of a time-to-event fit: model parameters

In the previous post we have shown that time-to-event curves (e.g., germination or emergence curves) can be used to describe the time course of germinations/emergences for a seed lot ([this post](https://www.statforbiology.com/2021/stat_drcte_4-time-to-eventcurves/)). We have also seen that the effects of experimental factors on seed germination can be accounted for by coding a different time-to-event curve for each factor level ([this post](https://www.statforbiology.com/2021/stat_drcte_5-comparinglots/)).

Once we have fit a time-to-event model, we are usually interested in exploring the results, to get all possible information from the fitted model. If we have fitted a parametric model, the value of the estimated parameters is usually of extreme interest, as it gives information on the main traits of germination/emergence (e.g., capability, speed and uniformity).

For example, let's consider the hydro-time model we have fitted in our previous post [at this link](https://www.statforbiology.com/2022/stat_drcte_6-ht1step/):

$$ P(t, \Psi) = \Phi \left\{ \frac{\Psi - (\theta_H / t) -\Psi_b }{\sigma_{\Psi_b}} \right\}$$

where `\(P\)` is the cumulative proportion of germinated seeds at time `\(t\)` and water potential `\(\Psi\)`, `\(\Phi\)` is a gaussian cumulative distribution function for base water potential, `\(\Psi_{b}\)` is the median base water potential in the seed lot (in MPa), `\(\theta_H\)` is the hydro-time constant (in MPa day or MPa hour) and `\(\sigma_{\Psi_b}\)` represents the variability of `\(\Psi_b\)` within the population. Clearly, these parameters have a clear biological meaning and getting to know about their value represents the reason why we have fitted such a model. The box below shows the code we used in our previous post:



``` r
library(drcSeedGerm)
library(drcte)
data(rape)
modHTE <- drmte(nSeeds ~ timeBef + timeAf + Psi, 
                data = rape, fct = HTnorm())
coef(modHTE)
##    ThetaH:(Intercept)    Psib50:(Intercept) sigmaPsib:(Intercept) 
##             0.7510691            -0.9069810             0.2369954
```

Indeed, we got parameter estimates, but we are not happy with this. We also need standard errors, to present along with estimates in our papers. The easiest way to obtain parameters and their standard errors altogether is to use the `summary()` method for 'drcte' objects:


``` r
summary(modHTE)
## 
## Model fitted: Hydrotime model with normal distribution of Psib (Bradford et al., 2002)
## 
## Robust estimation: no 
## 
## Parameter estimates:
## 
##                         Estimate Std. Error t-value   p-value    
## ThetaH:(Intercept)     0.7510691  0.0394604  19.034 < 2.2e-16 ***
## Psib50:(Intercept)    -0.9069810  0.0118081 -76.810 < 2.2e-16 ***
## sigmaPsib:(Intercept)  0.2369954  0.0071406  33.190 < 2.2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

Unfortunately, the above standard errors are not correct: indeed, they are obtained assuming that the observational units (i.e., the seeds) are independent, while they are clustered within randomisation units (Petri dishes, in this case). Consequently, seeds in the same Petri dish are more similar than seeds in different Petri dishes (there is intra-class correlation, we say). How can we obtain standard errors that account for such lack of independence?

If we look at the literature about survival analysis (that is where we borrowed our methods from), we can see that cluster robust sandwich estimators of standard errors have proven useful and reliable (Yu and Peng, 2008). Therefore, we have implemented them in 'drcte'; the ‘units’ argument in the `summary()` method can be used to provide a variable for the Petri dishes and calculate cluster-robust SEs, by way of the facilities provided in the ‘sandwich’ package (Zeileis et al. 2020).



``` r
summary(modHTE, robust = T, units = Dish)
## 
## Model fitted: Hydrotime model with normal distribution of Psib (Bradford et al., 2002)
## 
## Robust estimation: Cluster robust sandwich SEs 
## 
## Parameter estimates:
## 
##                        Estimate Std. Error  t value  Pr(>|t|)    
## ThetaH:(Intercept)     0.751069   0.131968   5.6913 3.075e-08 ***
## Psib50:(Intercept)    -0.906981   0.039530 -22.9444 < 2.2e-16 ***
## sigmaPsib:(Intercept)  0.236995   0.031309   7.5696 4.974e-13 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

We see that the difference between 'naive' and cluster robust SEs is remarkable.

There might be other methods to obtain cluster robust standard errors (e.g., jackknife and bootstrap methods) and we are looking for ways to implement them in a reliable way. So far, we recommend that you make sure that your standard errors for model parameters do not neglect the clustering of seeds within randomisation units (petri dishes, pots, boxes or plots).

Thank you for reading!


Prof. Andrea Onofri   
Department of Agricultural, Food and Environmental Sciences    
University of Perugia (Italy)    
Send comments to: [andrea.onofri@unipg.it](mailto:andrea.onofri@unipg.it)

<a href="https://twitter.com/onofriandreapg?ref_src=twsrc%5Etfw" class="twitter-follow-button" data-show-count="false">Follow @onofriandreapg</a><script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>


---

# References

1. Yu, B., Peng, Y., 2008. Mixture cure models for multivariate survival data. Computational Statistics and Data Analysis 52, 1524–1532.
2. Onofri, A., Mesgaran, M., & Ritz, C. (2022). A unified framework for the analysis of germination, emergence, and other time-to-event data in weed science. Weed Science, 1-13. doi:10.1017/wsc.2022.8
3. Zeileis, A., Köll, S., Graham, N., 2020. Various Versatile Variances: An Object-Oriented Implementation of Clustered Covariances in R. J. Stat. Soft. 95. https://doi.org/10.18637/jss.v095.i01


