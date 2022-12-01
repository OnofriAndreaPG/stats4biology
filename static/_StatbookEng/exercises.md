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

Placeholder


## Back to the 'mixture' example
## Linear contrasts
### The variance of contrasts
### Testing linear contrasts with R
## Pairwise comparisons
## Letter display
## Multiplicity correction
## Multiple comparisons with transformed data
## What about the traditional MCPs?
## Some practical suggestions
## Further readings

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

The following excercises are organised by section, each one corresponding to a book chapter. Use the exercises to verify your learning process, after studying each chapter and before proceeding to the next one. 

## Introduction to biometry (ch. 1)

### Question 1

What are the fundamental traits of a valid experiment?

### Question 2

What are the main steps of Galileo's scientific method?

### Question 3

What is the difference between systematic and random errors? Which of the two errors is most concerning?

### Question 4

What is the difference between true-replicates and pseudo-replicates?

### Question 5

What do we intend with the word 'confounding'? What is the role of 'confounding' in scientific experiments?

---

## Designing experiments (ch. 2)

### Excercise 1

You have been requested to lay-out a breeding experiment, with 16 wheat genotypes, coded by using letters of the Roman alphabet. The aim is to determine which genotype behaves the best in a given environment.

Write the experimental protocol, where you specify all the main elements of your project (subjects, variables, replicates, experimental design) and add the field map.

### Exercise 2

Describe the protocol of an experiment to determine the effect of sowing date (autumn and spring) on seven faba bean genotypes. Include all possible elements to assess whether the experiment is valid, describe the type of design and include the field map, showing all relevant information (including plot sizes and orientation in space). What type of check would you add (if any)? Motivate all your choices.

### Exercise 3

Describe the protocol of an experiment to determine the effect of nitrogen dose on several wheat genotypes. Include all possible elements to assess whether the experiment is valid, describe the type of design and include the field map, showing all relevant information (including plot sizes and orientation in space). Motivate all your choices.



---

## Describing the observations (ch. 3)

### Exercise 1

A chemical analysis was performed in triplicate, with the following results: 125,  169 and 142 ng/g. Calculate mean, sum of squares, mean square, standard deviation and coefficient of variation. What is a correct way to display the result?

### Exercise 2

Consider the Excel file 'rimsulfuron.csv' from [https://www.casaonofri.it/_datasets/rimsulfuron.csv](https://www.casaonofri.it/_datasets/rimsulfuron.csv) (you can either download it, or read it directly from the internet repository). This is a dataset relating to a field experiment to compare 14 herbicides and two untreated checks, with 4 replicates per treatment. The response variables are maize yield and weed coverage. Describe the dataset and show the results on a barplot, including some measure of variability. Check whether yield correlates to weed coverage and comment on the results.

### Exercise 3

Load the csv file 'students.csv' from [https://www.casaonofri.it/_datasets/students.csv](https://www.casaonofri.it/_datasets/students.csv). This dataset relates to a number of students, their votes in several undergraduate exams and information on high school. Determine: (i) the absolute and relative frequencies for the different subjects; (ii) the frequency distribution of votes in three classes (bins): <24, 24-27, >27; (iii) whether the votes depend on the exam subject and (iv) whether the votes depend on the high school type.

---

## Modeling the experimental data (ch. 4)

### Exercise 1

A xenobiotic substance degrades in soil following a first-order kinetic, which is described by the following equation:

$$Y = 100 \, e^{-0.07 \, t}$$

where Y is the concentration at time $t$. After spraying this substance in soil, what is the probability that 50 days later we observe a concentration below the toxicity threshold for mammalians (2 ng/g)? Please, consider that all the unknown sources of experimental error can be regarded as gaussian, with a coefficient of variability equal to 20%.



### Exercise 2

Crop yield is a function of its density, according to the following function:

$$ Y = 0.8 + 0.8 \, X - 0.07 \, X^2$$



Draw the graph and find the required density to obtain the highest yield (use a simple graphical method). What is the probability of obtaining a yield level between 2.5 and 3 t/ha, by using the optimal density? Consider that random variability is 12%. 




### Exercise 3

The toxicity of a compound changes with the dose, according to the following expression:

$$ Y = \frac{1}{1 + exp\left\{ -2 \, \left[log(X) - log(15)\right] \right\}}$$

where $Y$ is the proportion of dead animals and $X$ is the dose. If we treat 150 animals with a dose of 35 g, what is the probability of finding more than 120 dead animals? The individual variability can be approximated by using a gaussian distribution, with a standard error equal to 10.




### Exercise 4

Consider the sample C = [140 - 170 - 155], which was drawn by a gaussian distribution. Calculate the probability of drawing an individual value from the same pupulation in the following intervals:

1.  higher than 170
2.  lower than 140
3.  within the range from 170 and 140

### Exercise 5

Reproduce the possible results of a genotype experiment, with five maize genotypes (A, B, C, D and E) and expected values of, respectively, 12, 13, 12.5, 14 and 11 tons per hectare. Assume that the experimental (random) variability can be described by a gaussian distribution, with mean equal to 0 and standard deviation equal to 1.25 (common value for all genotypes). The experiment is designed as completely randomised, with four replicates.

### Exercise 6

Consider the relationship between crop yield and density, as shown in Exercise 2 ($Y = 0.8 + 0.8 \, X - 0.07 \, X^2$). Reproduce the results of a completely randomised (four replicates) sowing density experiment, with five densities (2, 4, 6, 8 and 10 plants per square meter), considering that the experimental (random) variability can be described by a gaussian distribution, with mean equal to 0 and standard deviation equal to 0.25 (common value for all densities).



---

## Estimation of model parameters (ch. 5)

### Exercise 1

A chemical analysis was repeated three times, with the following results: 125, 169 and 142 ng/g. Calculate mean, deviance, variance, standard deviation, standard error and confidence intervals (P = 0.95 and P = 0.99).

### Exercise 2

An experiment was carried out, comparing the yield of four wheat genotypes (in tons per hectar). The results are as follows:


|Genotype | Rep-1| Rep-2| Rep-3| Rep4|
|:--------|-----:|-----:|-----:|----:|
|A        |  6.46|  5.51|  5.37| 5.50|
|B        |  5.26|  5.58|  4.87| 5.46|
|C        |  4.78|  4.71|  5.48| 4.47|
|D        |  6.19|  6.53|  6.10| 6.12|

For each genotype, calculate the mean, deviance, variance, standard deviation, standard error and confidence interval (P = 0.95).

### Exercise 3

We have measured the length of 30 maize seedlings, treated with selenium in water solution. The observed lengths are:

```
length <- c(2.07, 2.23, 2.04, 2.16, 2.12, 2.33, 2.21, 2.22, 2.29, 2.28, 
2.44, 2.04, 2.02, 1.49, 2.12, 2.38, 2.51, 2.27, 2.55, 2.44, 2.28, 
2.2, 2.03, 2.35, 2.34, 2.34, 1.99, 2.44, 2.44, 1.91)
```

For the above sample, calculate the mean, deviance, variance, standard deviation, standard error and confidence interval (P = 0.95).

### Exercise 4

A sample of 400 insects was sprayed with an insecticide and 136 individuals survived the treatment. Determine the efficacy of the insecticide, in terms of proportion of dead insects, together with 95% confidence limits.

---

## Making decisions under uncertainty (ch. 6)

### Exercise 1

We have compared two herbicides for weed control in maize. With the first herbicide (A), we observed the following weed coverings: 9.3, 10.2, 9.7 %. With the second herbicide, we observedd: 12.6, 12.3 e 12.5 %. Are the means for the two herbicides significantly different (P < 0.05)?


### Exercise 2

We have made an experiment to compare two fungicides A and B. The first fungicide was used to treat 200 fungi colonies and the number of surviving colonies was 180. B was used to treat 100 colonies and 50 of those survived. Is there a significant difference between the efficiacies of A and B (P < 0.05)?


### Exercise 3

A plant pathologist studied the crop performances with (A) and without (NT) a fungicide treatment. The results are as follows:

    A    NT
  ----- ----
   65    54
   71    51
   68    59

Was the treatment effect significant (P < 0.05)?

### Exercise 4

In this year, an assay showed that 600 olive drupes out of 750 were attacked by  *Daucus olee*. In a close field, under the same environmental conditions, the count of attacked drupes was 120 on 750. Is the the observed difference statistically significant (P < 0.05) or is it just due to random fluctuation?

### Exercise 5

In a hospital, blood cholesterol level was measured for eight patients, before and after a three months terapy. The observed values were:

    Patient   Before    After
  ---------- ---------- ----------
           1      167.3      126.7
           2      186.7      154.2
           3      105.0      107.9
           4      214.5      209.3
           5      148.5      138.5
           6      171.5      121.3
           7      161.5      112.4
           8      243.6      190.5

Can we say that this terapy is effective, or not?

### Exercise 6

A plant breeder organised an experiment to compare three wheat genotypes, i.e. GUERCINO, ARNOVA and BOLOGNA, according to a completely randomised design with 10 replicates. The observed yields are:


| guercino | arnova | bologna |
|:--------:|:------:|:-------:|
|   53.2   |  53.1  |  43.5   |
|   59.1   |  51.0  |  41.0   |
|   62.3   |  51.9  |  41.2   |
|   48.6   |  55.3  |  44.8   |
|   59.7   |  58.8  |  40.2   |
|   60.0   |  54.6  |  37.2   |
|   55.7   |  53.0  |  45.3   |
|   55.8   |  51.4  |  38.9   |
|   55.7   |  51.7  |  42.9   |
|   54.4   |  64.7  |  39.3   |

1. Describe the three samples, by using the appropriate statistics of central tendency and spread
2. Infere the means of the pupulations from where the samples were drawn
3. For each of the three possible couples (GUERCINO vs ARNOVA, GUERCINO vs BOLOGNA and ARNOVA vs BOLOGNA), test the hypothesis that the two means are significantly different.




### Exercise 7

A botanist counted the number of germinated seeds for oilseed rape at two different temperatures (15 and 25°C). At 15°C, 358 germinations were counted out of 400 seeds. At 25°C, 286 germinations were counted out of 380 seeds.

1. Describe the proportions of germination for the three samples
2. Infere the proportion of germinated seeds in the two populations, from where the samples of seeds were extracted (remember that the variance for a proportion is calculated as $p \times (1- p)$.
3. Test the hypothesis that temperature had a significant effect on the germinability of oilseed rape seeds.



---

## One-way ANOVA models (ch. 7 to 9)

The following exercises are based on slightly more complex datasets. You may not like to enter all the data in R and, therefore, we put all the dataset at your disposal in an Excel file, which you can download from the following link [https://www.casaonofri.it/_datasets/BookExercises.xlsx](https://www.casaonofri.it/_datasets/BookExercises.xlsx). Each dataset is in a different sheet and the sheet names are given in each exercise.

### Exercise 1

An experiment was conducted with a completely randomised design to compare the yield of 5 wheat genotypes. The results (in bushels per acre) are as follows:

  
   Variety  |  1   |   2    |  3 |
  |:-----:|:-----:|:-----: |:-----:|
      A     | 32.4 |  34.3  | 37.3 |
      B     | 20.2 |  27.5  | 25.9 |
      C     | 29.2 |  27.8  | 30.2 |
      D     | 12.8 |  12.3  | 14.8 |
      E     | 21.7 |  24.5  | 23.4 |


1. Write the linear model for this study and explain the model components
2. Compute the ANOVA
3. Check for the basic assumptions
4. Compare the means
5. Present the results and comment on them

The example is taken from: Le Clerg *et al*. (1962)    
[Sheet: 7.1]

### Exercise 2

Cell cultures of tomato were grown by using three types of media, based on glucose, fructose and sucrose. The experiment was conducted with a completely randomised design with 5 replicates and a control was also added to the design. Cell growths are reported in the table below:

Control | Glucose | Fructose | Sucrose |
|:----:|:----:|:----:|:----:|
45 | 25 | 28 | 31 |
39 | 28 | 31 | 37 |
40 | 30 | 24 | 35 |
45 | 29 | 28 | 33 |
42 | 33 | 27 | 34 |

1. Write the linear model for this study and explain the model components
2. Compute the ANOVA
3. Check for the basic assumptions
4. Compare the means
5. Present the results and comment on them   
[Sheet: 7.2]


### Exercise 3

The failure time for a heating system was assessed, to discover the effect of the operating temperature. Four temperatures were tested with 6 replicates, according to a completely randomised design and the number of hours before failure were measured.
The results are as follows:

    Temp.   Hours to failure
  ------- ------------------
     1520               1953
     1520               2135
     1520               2471
     1520               4727
     1520               6134
     1520               6314
     1620               1190
     1620               1286
     1620               1550
     1620               2125
     1620               2557
     1620               2845
     1660                651
     1660                837
     1660                848
     1660               1038
     1660               1361
     1660               1543
     1708                511
     1708                651
     1708                651
     1708                652
     1708                688
     1708                729

Please, note that these are the only possible values for temperature. Determine the best operating temperature, in order to delay failure.    
[Sheet: 7.3]

### Exercise 4

An entomologist counted the number of eggs laid from a lepidopter on three tobacco genotypes. 15 females were tested for each genotype and the results are as follows:

    Female   Field   Resistant   USDA
  -------- ------- ----------- ------
         1     211           0    448
         2     276           9    906
         3     415         143     28
         4     787           1    277
         5      18          26    634
         6     118         127     48
         7       1         161    369
         8     151         294    137
         9       0           0     29
        10     253         348    522
        11      61           0    319
        12       0          14    242
        13     275          21    261
        14       0           0    566
        15     153         218    734

Which is the most resistant genotype?    
[Sheet: 7.4]

---

## Multy-way ANOVA models (ch. 10)

### Exercise 1

Data were collected about 5 types of irrigation on orange trees in Spain. The experiment was laid down as complete randomised blocks with 5 replicates and the results are as follows:


|              Method   |  1  |   2   |  3   |  4   |  5    |
|:-----|:----:|:----:|:----:|:----:|:----:|
|            Localised  | 438 |  413  | 375  | 127  | 320   |
|              Surface  | 413 |  398  | 348  | 112  | 297   |
|            Sprinkler  | 346 |  334  | 281  |  43  | 231   |
|Sprinkler + localised  | 335 |  321  | 267  |  33  | 219   |
|           Submersion  | 403 |  380  | 336  | 101  | 293   |


1. Write the linear model for this study and explain the model components
2. Compute the ANOVA
3. Check for the basic assumptions
4. Compare the means
5. Present the results and comment on them    
[Sheet: 10.1]

### Exercise 2

A fertilisation trial was conducted according to a RCBD with five replicates. One value is missing for the second treatment in the fifth block. The observed data are percentage contents in P~2~ O~5~ in leaf samples:

              Treatment       1      2     3      4      5
  ----------------------- ------ ------ ----- ------ ------
             Unfertilised    5.6    6.1   5.3    5.9    9.4
                  50 lb N    7.3    6.0   7.7    7.7    NA
                 100 lb N    6.9    6.0   5.6    7.4    8.2
     50 lb N + 75 lb P2O5   10.8   11.2   8.8   10.4   12.9
    100 lb N + 75 lb P205    9.6    9.3    12   10.6   11.6

1. Calculate arithmetic means
2. Calculate the ANOVA
3. Check for the basic assumptions
4. Calculate expected marginal means and compare to arithmetic means
5. The addition of P~2~ O~5~ is a convenient practice, in terms of agronomic effect?    
[Sheet: 10.2]

### Exercise 3

A latin square experiment was planned to assess effect of four different fertilisers on lettuce yield. The observed data are as follows:

   Fertiliser   Row   Column      Yield
  ----------- ------ --------- ------------
      A          1        1         104
      B          1        2         114
      C          1        3          90
      D          1        4         140
      A          2        4         134
      B          2        3         130
      C          2        1         144
      D          2        2         174
      A          3        3         146
      B          3        4         142
      C          3        2         152
      D          3        1         156
      A          4        2         147
      B          4        1         160
      C          4        4         160
      D          4        3         163
      
1. Write the linear model for this study and explain the model components
2. Compute the ANOVA
3. Check for the basic assumptions
4. Compare the means
5. Present the results and comment on them: what is the best fertiliser?    
[Sheet: 10.3]

---

## Multi-way ANOVA models with interactions (ch. 11 and 13)

Some of the following datasets were obtained by experiments designed as split-plots or strip-plots. If you do not understand these designs, you have not yet studied Chapter 13; therefore, you can disregard the information about the design and simply analyse the data as if they were obtained by simple randomised blocks designs. Please, note that, in practise, diregarding the information about the experimental design during data analysis is not admissible!

### Exercise 1

A pot experiment was planned to evaluate the best timing for herbicide application against rhizome *Sorghum halepense*. Five timings were compared (2-3, 4-5, 6-7 and 8-9 leaves), including a splitted treatment in two timings (3-4/8-9 leaves) and the untreated control. In order to understand whether the application is effective against plants coming from rhizomes of different sizes, a second factor was included in the experiment, i.e. rhizome size (2, 4, six nodes). The design was a fully crossed two-way factorial, laid down as completely randomised with four replicates. The results (plant weights three weeks after the herbicide application) are as follows:

| Sizes / Timings | 2-3   | 4-5   | 6-7   | 8-9   | 3-4/8-9 | Untreated|
|:--------------|:-----:|:-----:|:-----:|:-----:|:-------:|:----:|
| 2-nodes       | 34.03 | 0.10  | 30.91 | 33.21 | 2.89    | 41.63|
|               | 22.31 | 6.08  | 35.34 | 43.44 | 19.06   | 22.96|
|               | 21.70 | 3.73  | 24.23 | 44.06 | 0.10    | 52.14|
|               | 14.90 | 9.15  | 28.27 | 35.34 | 0.68    | 59.81|
| 4-nodes       | 42.19 | 14.86 | 52.34 | 39.06 | 8.62    | 68.15|
|               | 51.06 | 36.03 | 43.17 | 61.59 | 0.05    | 42.75|
|               | 43.77 | 21.85 | 57.28 | 48.89 | 0.10    | 57.77|
|               | 31.74 | 8.71  | 29.71 | 49.14 | 9.65    | 44.85|
| 6-nodes       | 20.84 | 11.37 | 55.00 | 41.77 | 9.80    | 43.20|
|               | 26.12 | 2.24  | 28.46 | 37.38 | 0.10    | 40.68|
|               | 35.24 | 14.17 | 21.81 | 39.55 | 1.42    | 34.11|
|               | 13.32 | 23.93 | 60.72 | 48.37 | 6.83    | 32.21|

1. Write the linear model for this study and explain the model components
2. Compute the ANOVA
3. Check for the basic assumptions
4. Calculate marginal means and cell means
5. Present the results and comment on them: what type of means should you report?    
[Sheet: 11.1]


### Exercise 2

Six faba bean genotypes were tested in two sowing times, according to a plit-plot design in 4 complete blocks. Sowing times were randomised to main-plots within blocks and genotypes were randomised to sub-plots within main-plots and blocks. Results are:


|Sowing  Time| Genotype    |    1  |    2  |    3  |    4  |
|:-----------|------------:|:-----:|:-----:|:-----:|:-----:|
|Autum       |     Chiaro  | 4.36  | 4.00  | 4.23  | 3.83  |
|            |  Collameno  | 3.01  | 3.32  | 3.27  | 3.40  |
|            |  Palombino  | 3.85  | 3.85  | 3.68  | 3.98  |
|            |      Scuro  | 4.97  | 3.98  | 4.39  | 4.14  |
|            |    Sicania  | 4.38  | 4.01  | 3.94  | 2.99  |
|            |    Vesuvio  | 3.94  | 4.47  | 3.93  | 4.21  |
|Spring      |     Chiaro  | 2.76  | 2.64  | 2.25  | 2.38  |
|            |  Collameno  | 2.50  | 1.79  | 1.57  | 1.77  |
|            |  Palombino  | 2.24  | 2.21  | 2.50  | 2.05  |
|            |      Scuro  | 3.45  | 2.94  | 3.12  | 2.69  |
|            |    Sicania  | 3.24  | 3.60  | 3.16  | 3.08  |
|            |    Vesuvio  | 2.34  | 2.44  | 1.71  | 2.00  |


1. Write the linear model for this study and explain the model components
2. Compute the ANOVA
3. Check for the basic assumptions
4. Calculate marginal means and cell means
5. Present the results and comment on them: what type of means should you report?    
[Sheet: 11.2]

### Exercise 3

Four crops were sown in soil 20 days after the application of three herbicide treatments, in order to evaluate possible carry-over effects of residuals. The untreated control was also added for comparison and the weight of plants was assessed four weeks after sowing. The experiment was laid down as strip-plot and, within each block, the herbicide were randomised to rows and crops to columns. The weight of plants is reported below:

|  Herbidicide     |Block| sorghum  | rape  | soyabean  | sunflower |
|:-----------------|:---:|:--------:|:-----:|:---------:|:---------:|
|  Untreated       | 1   |     180  |  157  |      199  |       201 |
|                  | 2   |     236  |  111  |      257  |       358 |
|                  | 3   |     287  |  217  |      346  |       435 |
|                  | 4   |     350  |  170  |      211  |       327 |
|  Imazethapyr     | 1   |      47  |   10  |      193  |        51 |
|                  | 2   |      43  |    1  |      113  |         4 |
|                  | 3   |       0  |   20  |      187  |        13 |
|                  | 4   |       3  |   21  |      122  |        15 |
|  primisulfuron   | 1   |     271  |    8  |      335  |       379 |
|                  | 2   |     182  |    0  |      201  |       201 |
|                  | 3   |     283  |   22  |      206  |       307 |
|                  | 4   |     147  |   24  |      240  |       337 |
|  rimsulfuron     | 1   |     403  |  238  |      226  |       290 |
|                  | 2   |     227  |  169  |      195  |       494 |
|                  | 3   |     400  |  364  |      257  |       397 |
|                  | 4   |     171  |  134  |      137  |       180 |
  

1. Write the linear model for this study and explain the model components
2. Compute the ANOVA
3. Check for the basic assumptions
4. Calculate marginal means and cell means
5. Present the results and comment on them: what type of means should you report?   
[Sheet: 11.3]


### Exercise 4

A field experiment was conducted to evaluate the effect of fertilisation timing (early, medium, late) on two genotypes. The experiment was designed as a randomised complete block design and the data represent the amount of absorbed nitrogen by the plant:

| Genotype | Block  |   Early |  Med  |  Late  |
|:---------|:------:|:-------:|:-----:|:------:|
| A        |    1   |   21.4  |  50.8 |  53.2  |
|          |    2   |   11.3  |  42.7 |  44.8  |
|          |    3   |   34.9  |  61.8 |  57.8  |
| B        |    1   |   54.8  |  56.9 |  57.7  |
|          |    2   |   47.9  |  46.8 |  54.0  |
|          |    3   |   40.1  |  57.9 |  62.0  |

1. Write the linear model for this study and explain the model components
2. Compute the ANOVA
3. Check for the basic assumptions
4. Calculate marginal means and cell means
5. Present the results and comment on them: what type of means should you report?    
[Sheet: 11.4]

### Exercise 5

A study was carried out to evaluate the effect of washing temperature on the reduction of length for four types of fabric. Results are expressed as percentage reduction and the experiment was completely randomised, with two replicates:

  | Fabric  |     210 °F  |    215 °F  |    220 °F   |  225 °F   |
  |:-------:|:-----------:|:----------:|:-----------:|:---------:|
  |    A    |     1.8     |     2.0    |     4.6     |    7.5    |
  |         |     2.1     |     2.1    |     5.0     |    7.9    |
  |    B    |     2.2     |     4.2    |     5.4     |    9.8    |
  |         |     2.4     |     4.0    |     5.6     |    9.2    |
  |    C    |     2.8     |     4.4    |     8.7     |   13.2    |
  |         |     3.2     |     4.8    |     8.4     |   13.0    |
  |    D    |     3.2     |     3.3    |     5.7     |   10.9    |
  |         |     3.6     |     3.5    |     5.8     |   11.1    |    

Consider the temperature as a factor and:

1. Write the linear model for this study and explain the model components
2. Compute the ANOVA
3. Check for the basic assumptions
4. Calculate marginal means and cell means
5. Present the results and comment on them: what type of means should you report?    
[Sheet: 11.5]

### Exercise 6

A chemical process requires one alcohol and one base. A study is organised to evaluate the factorial combinations of three alcohols and two bases on the efficiency of the process, expressed as a percentage. The experiment is designd as completely randomised.

 | Base  | Alcohol 1 | Alcohol 2 | Alcohol 3 |
 |:-----:|:---------:|:---------:|:---------:|
 |   A   |  91.3     |    89.9   |     89.3  |
 |       |  88.1     |    89.5   |     87.6  |
 |       |  90.7     |    91.4   |     90.4  |
 |       |  91.4     |    88.3   |     90.3  |
 |   B   |  87.3     |    89.4   |     92.3  |
 |       |  91.5     |    93.1   |     90.7  |
 |       |  91.5     |    88.3   |     90.6  |
 |       |  94.7     |    91.5   |     89.8  |

1. Write the linear model for this study and explain the model components
2. Compute the ANOVA
3. Check for the basic assumptions
4. Calculate marginal means and cell means
5. Present the results and comment on them: what type of means should you report?     
[Sheet: 11.6]

---

## Simple linear regression (ch. 12)

### Exercise 1

A study was conducted to evaluate the effect of nitrogen fertilisation in lettuce. The experiment is completely randomised with 4 replicates and the yield results are as follows:

   N level   B1    B2    B3    B4
  --------- ----- ----- ----- -----
      0      124   114   109   124
     50      134   120   114   134
     100     146   132   122   146
     150     157   150   140   163
     200     163   156   156   171

1. Write the linear model for this study and explain the model components
2. Estimate model parameters
3. Check for the basic assumptions
4. What yield might be obtained by using 120 kg N ha^-1^?
5. Present the results and comment on them?
[Sheet: 12.1]

### Exercise 2

A study was conducted to evaluate the effect of increasing densities of a weed (*Sinapis arvensis*) on sunflower yield. The experiment was completely randomised. Assuming that the yield response is linear, parameterise the model, check the goodness of fit and find the economical threshold level of weed density, considering that the yield worths 150 Euros per ton and the herbicide treatment costs 40 Euros per hectar. The observed results are:

   density   Rep   yield
  --------- ------- --------
      0        1     36.63
     14        1     29.73
     19        1     32.12
     28        1     30.61
     32        1      27.7
     38        1     27.43
     54        1     24.79
      0        2     36.11
     14        2     34.72
     19        2     30.12
     28        2      30.8
     32        2     26.53
     38        2      27.6
     54        2     23.31
      0        3     38.35
     14        3     32.16
     19        3     31.72
     28        3     28.69
     32        3     25.88
     38        3     28.43
     54        3     30.26
      0        4     36.74
     14        4     32.566
     19        4     29.57
     28        4     33.663
     32        4     28.751
     38        4     27.114
     54        4     24.664


[Sheet: 12.2]     

---

## Nonlinear regression (ch. 14)

### Exercise 1

Two soil samples were treated with two herbicides and put in a climatic chamber at 20°C. Sub-samples were collected from both samples in different times and the concentration of herbicide residues was measured. The results are as follows:

   Time   Herbicide A   Herbicide B
  ------ ------------- -------------
    0       100.00        100.00
    10       50.00         60.00
    20       25.00         40.00
    30       15.00         23.00
    40       7.00          19.00
    50       3.50          11.00
    60       2.00          5.10
    70       1.00          3.00

Assuming that the degradation follows an exponential decay trend, determine the half-life for both herbicides.    
[Sheet: 14.1]


### Exercise 2

A microbial population grows exponentially over time. Considering the following data, determine the relative rate of growth, by fitting the exponential growth model.

   Time   Cells
  ------ -------
    0       2
    10      3
    20      5
    30      9
    40     17
    50     39
    60     94
    70     201
    
[Sheet: 14.2]    

### Exercise 3

An experiment was conducted to determine the absorption of nitrogen by roots of *Lemna minor* in hydroponic colture. Results (N content) are the following:

    Conc     Rate
  -------- --------
    2.86    14.58
    5.00    24.74
    7.52    31.34
   22.10    72.97
   27.77    77.50
   39.20    96.09
   45.48    96.97
   203.78   108.88

Use nonlinear least squares to estimate the parameters for the rectangular hyperbola (Michaelis-Menten model):

$$Y = \frac{a X} {b + X}$$

and make sure that model fit is good enough.

[Sheet: 14.3]

### Exercise 4

An experiment was conducted to determine the yield of sunflower at increasing densities of a weed (*Ammi majus*). Based on the following results, parameterise a rectangular hyperbola ($Y = (a \, X)/(b + X)$ and test for possible lack of fit. The results are:

   Weed density   Yield Loss (%)
  -------------- ---------------
        0         0
        23        17.9
        31        21.6
        39        26.9
        61        29.5

[Sheet: 14.4]

### Exercise 5

An experiment was conducted in a pasture, to determine the effect of sampling area on the number of plant species (in general, the higher the sampling area and the higher the number of sampled species). The results are as follows:.

   Area   N. of species
  ------ --------------
    1         4
    2         5
    4         7
    8         8
    16       10
    32       14
    64       19
   128       22
   256       22

By using the above data, parameterise a power curve $Y = a \, X^b$ and test for lack of fit.

[Sheet: 14.5]

### Exercise 6

Crop growth can be often described by using a Gompertz model. The data below refer to an experiment were sugarbeet was grown either weed free, or weed infested; the weight of the crop per unit area was measured after six different numbers of Days After Emergence (DAE). The experiment was conducted by using a completely randomised design with three replicates and the results are reported below:

   DAE   Infested   Weed Free
  ----- ---------- -----------
   21      0.06       0.07
   21      0.06       0.07
   21      0.11       0.07
   27      0.20       0.34
   27      0.20       0.40
   27      0.21       0.25
   38      2.13       2.32
   38      3.03       1.72
   38      1.27       1.22
   49      6.13       11.78
   49      5.76       13.62
   49      7.78       12.15
   65     17.05       33.11
   65     22.48       24.96
   65     12.66       34.66
   186    21.51       38.83
   186    26.26       27.84
   186    27.68       37.72

Parameterise two Gompertz growth models (one for the weed-free crop and one for the infested crop) and evalaute which of the parameters are most influenced by the competition. The Gompertz growth model is:

$$Y = d \cdot exp\left\{- exp \left[ - b (X - e)\right] \right\}$$

[Sheet: 14.6]

### Exercise 7

Plants of *Tripleuspermum inodorum* in pots were treated with a sulphonylurea herbicide  (tribenuron-methyl) at increasing rates. Three weeks after the treatment the weight per pot was recorded, with the following results:

   Dose (g a.i. ha$^{-1}$)   Fresh weight (g pot $^{-1}$)
  ------------------------- ------------------------------
              0                         115.83
              0                         102.90
              0                         114.35
            0.25                        91.60
            0.25                        103.23
            0.25                        133.97
             0.5                        98.66
             0.5                        92.51
             0.5                        124.19
              1                         93.92
              1                         49.21
              1                         49.24
              2                         21.85
              2                         23.77
              2                         22.46

Assuming that the dose-response relationship can be described by using the following log-logistic model:

$$Y = c + \frac{d - c}{1 + exp \left\{ - b \left[ log (X) - log (e) \right] \right\}}$$

Parameterise the model and evaluate the goodnes of fit.

[Sheet: 14.7]


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

