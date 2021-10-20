---
title: "Experimental methods in agriculture"
author: "Andrea Onofri and Dario Sacco"
date: "Update: v. 0.9 (2021-10-06), compil. 2021-10-12"
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

To be done ...

<!--chapter:end:04-Eng_ModelliSperimentazione.Rmd-->

# Estimation of model parameters

To be done ...

<!--chapter:end:05-Eng_InferenzaStatistica.Rmd-->

# Making Decisions under uncertainty

To be done ...

<!--chapter:end:06-Eng_TestIpotesi.Rmd-->

# One-way ANOVA models

To be done ...

<!--chapter:end:07-Eng_oneWayANOVA.Rmd-->

# Checking for the basic assumptions

... 

<!--chapter:end:08-Eng_AssunzioniBase.Rmd-->

# Contrasts and multiple comparison testing

To be done ...

<!--chapter:end:09-Eng_ConfrontoMultiplo.Rmd-->

# Multi-way ANOVA models 

To be done ...

<!--chapter:end:10-Eng_MultiWayANOVAModels.Rmd-->

# Multi-way ANOVA models with interactions


To be done ...

<!--chapter:end:11-Eng_AnovaDueLivelli.Rmd-->

# Plots of different sizes

To be done ...

<!--chapter:end:12-Eng_SplitStrip.Rmd-->

# Simple linear regression

To be done ...

<!--chapter:end:14-Eng_LinearRegression.Rmd-->

# Nonlinear regression

To be done ...

<!--chapter:end:15-Eng_NonLineare.Rmd-->


# Exercises

Placeholder


## Chapter 3
### Exercise 1
### Exercise 2
### Exercise 3
## Chapter 4
### Exercise 1
### Exercise 2
### Exercise 3
### Exercise 4
### Exercise 5
## Chapter 5
### Exercise 1
### Exercise 2
## Chapter 6
### Exercise 1
### Exercise 2
### Exercise 3
### Exercise 4
### Exercise 5
## Chapters 7 to 9
### Exercise 1
### Exercise 2
### Exercise 3
### Exercise 4
## Chapter 10
### Exercise 1
### Exercise 2
### Exercise 3
## Chapters 11 and 12
### Exercise 1
### Exercise 2
### Exercise 3
### Exercise 4
### Exercise 5
### Exercise 6
## Chapter 13
### Exercise 1
### Exercise 2
## Chapter 14
### Exercise 1
### Exercise 2
### Exercise 3
### Exercise 4
### Exercise 5
### Exercise 6
### Exercise 7

<!--chapter:end:16-Eng_Exercises.Rmd-->

# APPENDIX: A very gentle introduction to R

## What is R?

R is a statistical software; it is open source and it works under a freeware GNU licence. It is very powerful, but it has no graphical interface and thus we need to be able to use it by writing a lines of code, following a specific syntax, which is something we may not be used to.

## Installing R and moving the first steps

Please, follow this basic steps:

1. Install R from: [https://cran.r-project.org](https://cran.r-project.org). Follow the link to CRAN (uppermost right side), select one of the available mirrors (you can simply select the first link on top), select your Operating System (OS) and download the base version. Install by using all default options.
2. Install RStudio from: [https://rstudio.com/products/rstudio/](https://rstudio.com/products/rstudio/). Select RStudio Desktop version, open source edition and download. Install by using all default options.
3. Launch RStudio.

You will note four panes, although, at the beginning we only need two of them, named: (1) SOURCE and (2) CONSOLE. The basic principle is to write code SOURCE pane and send it to the console pane, by using 'ctrl-R' or 'ctrl-Return' ('cmd-Return' in Mac OSx). The SOURCE pane is a text editor and we can save script files, by using the '.R' extension. The CONSOLE pane is where the code is processed, to return the results.

Before we start, there are a few important suggestions that we should keep into consideration, in order to save a few headackes:

1. unlike most programs in WINDOWS, R is case-sensitive and, e.g., 'A' is not  not the same as 'a'. Plese, note that most errors in R are due to small types, which may take very long to be spotted!
2. Code written in the SOURCE pane **MUST BE** sent to the console pane, otherwise it is not executed. It's like writing a Whatsapp message: our mate cannot see it until we send it away!
3. Spaces in code are usually allowed, but not within functions and some operators composed by more than one character. Spaces are used to write clearer code
4. It is useful to comment the code, so that we remember what we intended to do. Every line preceded by a hash symbol (#) is not executed.

## Assignments

In R we work with objects, that must be assigned a name, so that they can be stored in memory and easily recalled. The name is a **variable** and it is assigned by the assignment operator '<-' (Less-then sign + dash sign). The following code assigns the value of 3 to the 'y' variable and variables can be inspected by simply writing their names and sending it to the console.


```r
y  <-  3
y
```

```
## [1] 3
```


## Data types and data objects

In R, as in most programming languages, we have different data types that can be assigned to a variable:

1. numeric
2. integer
3. character (use quotation marks: "andrea" or "martina")
4. factor
5. Logic (boolean): TRUE or FALSE

A set of data can be stored in specific data objects. The most important object is the **vector**, that is a uni-dimensional array, storing data of the same type (you can't mix!). For example, the following box shows a vector of character strings and a vector of numeric values: we see that the vector is created by the `c()` function and the elements are separated by commas.


```r
sentence <- c("this", "is", "an", "array", "of", "characters")
x <- c(12, 13, 14)
```

The factor vector is different from a character vector, as it stores character objects belonging to some predefined levels; it is useful to store the experimental variables (experimental factors, as we will call them). The code below shows a character vector that is transformed into a factor, by using the `factor()` function.


```r
treat  <-  c("A", "A", "B", "B", "C", "C")
treat
```

```
## [1] "A" "A" "B" "B" "C" "C"
```

```r
factor(treat)
```

```
## [1] A A B B C C
## Levels: A B C
```

We have already used a couple of functions ad we have noted that they are characterised by a name followed by a pair of brackets (e.g., `c()` or `factor()`). The arguments go inside the brackets, but we will give more more detail later on.


## Matrices

Vectors are uni-dimensional arrays and matrices are bi-dimensional arrays, with rows and columns. It can be used only to store data of the same type (like a vector) and it is created by using the `matrix()` function. The first argument to this function is a vector of values, the second argumento is the nuber of rows and the third is the number of columns. The fourth argument is logical and it specifies whether the matrix is populated by row (byrow = TRUE) or by column (byrow = FALSE). 



```r
z  <-  matrix(c(1, 2, 3, 4, 5, 6, 7, 8),
              2, 4, byrow=TRUE)
z
```

```
##      [,1] [,2] [,3] [,4]
## [1,]    1    2    3    4
## [2,]    5    6    7    8
```

## Dataframes

The dataframe is also a table (like a matrix), but columns can contain data of different type. It is the most common way to store the experimental data and it should be orginised in a 'tidy' way: with one experimental unit per row and all the traits of each unit in different columns. In the box below we create three vecotrs and combine them in a dataframe. 

\scriptsize

```r
plot  <-  c(1, 2, 3, 4, 5, 6)
treat  <-  factor(c("A", "A", "B", "B", "C", "C"))
yield  <-  c(12, 15, 16, 13, 11, 19)
dataset  <-  data.frame("Plot" = plot,
  "Treatment" = treat, "Yield" = yield)
dataset
```

```
##   Plot Treatment Yield
## 1    1         A    12
## 2    2         A    15
## 3    3         B    16
## 4    4         B    13
## 5    5         C    11
## 6    6         C    19
```


## Working with objects

If we have created a number of objects and stored them in memory, we might be interested in doing viewing them or access some of their elements. Objects can be simply viewed by using their name, as shown below.


```r
z
```

```
##      [,1] [,2] [,3] [,4]
## [1,]    1    2    3    4
## [2,]    5    6    7    8
```

With objects containing more than one value (vectors, matrices or dataframes) we can use indexing to retreive an element in one specific position. Indexing is performed by using square brackets, containing the index or a list of indices, for multi-dimensional objects.


```r
x[1] # First element in a vector
```

```
## [1] 12
```

```r
z[1,3] # Element in first row and third column, in a dataframe or matrix
```

```
## [1] 3
```

```r
dataset[ ,1] # First Column
```

```
## [1] 1 2 3 4 5 6
```

```r
dataset[1, ] # First Row
```

```
##   Plot Treatment Yield
## 1    1         A    12
```

Column vectors in dataframes can also be accessed by using their name and the 'dollar' sign, as shown below.


```r
dataset$Plot
```

```
## [1] 1 2 3 4 5 6
```

It is also useful to ask for infos about objects, which can be done by using two functions:

1. `str()`: tells us the structure of an object
2. `summary()` - summarizes the main traits of an object



```r
str(dataset)
```

```
## 'data.frame':	6 obs. of  3 variables:
##  $ Plot     : num  1 2 3 4 5 6
##  $ Treatment: Factor w/ 3 levels "A","B","C": 1 1 2 2 3 3
##  $ Yield    : num  12 15 16 13 11 19
```

```r
summary(dataset)
```

```
##       Plot      Treatment     Yield      
##  Min.   :1.00   A:2       Min.   :11.00  
##  1st Qu.:2.25   B:2       1st Qu.:12.25  
##  Median :3.50   C:2       Median :14.00  
##  Mean   :3.50             Mean   :14.33  
##  3rd Qu.:4.75             3rd Qu.:15.75  
##  Max.   :6.00             Max.   :19.00
```

## Expressions, functions and arguments

Expressions can be used to return results or store them in new variables


```r
2 * y
```

```
## [1] 6
```

```r
f  <-  2 * y
f
```

```
## [1] 6
```


As we said above, functions are characterised by a name and a list of arguments in brackets.


```r
log(5)
```

```
## [1] 1.609438
```

Very often, there are multiple arguments and we have to pay some attention on how to enter them. We can either:

1. supply them in the exact order with which R expects them
2. use argument names

We can see the list of arguments and their order by using the R help, that is invoked by a question mark followed by the function name, as shown in the example below.


```r
?log #Getting help
# The two arguments are the value and the base for logarithm
log(100, 2) # Supplied in order
```

```
## [1] 6.643856
```

```r
log(100, base = 2) # Supplied with names
```

```
## [1] 6.643856
```

```r
log(base=2, 100) # Different order, but correct syntax
```

```
## [1] 6.643856
```

```r
log(2, 100) # Wrong!!!
```

```
## [1] 0.150515
```


## A few useful functions

A few functions are useful to analyse the experimental data. For example, it is important to be able to create sequences of values, as shown below.


```r
plot  <-  seq(1, 10,1)
plot
```

```
##  [1]  1  2  3  4  5  6  7  8  9 10
```

Likewise, we need to be able to save time by repeating vectors or vector elements, as shown below.


```r
treat <- c("A", "B", "C")
rep(treat, 3) #Repeating whole vector
```

```
## [1] "A" "B" "C" "A" "B" "C" "A" "B" "C"
```

```r
rep(treat, each = 3) #Repeating each element
```

```
## [1] "A" "A" "A" "B" "B" "B" "C" "C" "C"
```

Several vectors can be combined in one vector by using the `c()` function:


```r
# Matrices are created
y <- c(1,2,3)
z <- c(4,5,6)
c(y, z)
```

```
## [1] 1 2 3 4 5 6
```


During our R session objects are created and written to the workspace (environment). At the end of a session (or at the beginning of a new one we might like to clean the workspace, by using the `rm()` function as shown below.


```r
rm(y, z) # remove specific objects
rm(list=ls()) # remove all objects
```

## Extractors

In some cases, functions return several objects, which are allocated in different slots. To extract such objects, we use the '$' operator. For example, the `eigen()` function calculates the eigenvector and eigenvalues of a matrix and these results are saved into the same variable, but in different slots. We can extract the results as shown below.


```r
MAT  <-  matrix(c(2,1,3,4),2,2)
MAT
```

```
##      [,1] [,2]
## [1,]    2    3
## [2,]    1    4
```

```r
ev  <-  eigen(MAT)
ev
```

```
## eigen() decomposition
## $values
## [1] 5 1
## 
## $vectors
##            [,1]       [,2]
## [1,] -0.7071068 -0.9486833
## [2,] -0.7071068  0.3162278
```

```r
ev$values
```

```
## [1] 5 1
```

```r
ev$vectors
```

```
##            [,1]       [,2]
## [1,] -0.7071068 -0.9486833
## [2,] -0.7071068  0.3162278
```


## Reading external data

R is not always the right tool to enter the experimental data and, most often, we enter the data by using a spreadsheet, such as EXCEL. This data can be stored as '.xls' or '.xlsx' files, or, as it is often the case in this book, as '.csv' file. While the former file types are specific to EXCEL, CSV files are a type of cross-platform text data, which does not store information about formatting (bold, italic or lines and background colors...), but 
can be opened with all programmes and operating systems.

To open CSV data, we can use the `read.csv()` function, while, for EXCEL files, we need to dowload, install and load an additional package ('readxl'), which is accomplished by using the following code:


```r
# install.packages("readxl") #install the package: only at first instance
library(readxl) # Load the library: at the beginning of each session
```

Loading the file is straightforward: if we know where the file is located, we use the commands:

```
dataset  <-  read.csv("fileName", header=TRUE) # Open CSV file
dataset  <-  read_xls("fileName", sheet = "nameOfSheet") # Open XLS file
dataset  <-  read_xlss("fileName", sheet = "nameOfSheet") # Open XLSX file
```

If we know the filename and its path, we can use it in place of 'fileName', or, more easily, we can use the `file.choose()` function, which show a selection windows, from where we can select the file to be opened.


## Simple R graphics

This is a huge topic, that we do not intend to develop here. We would just like to show a couple of examples of how simple graphs can be created with R. The code shown below can be used for a x-y scatterplot and superimpose a curve, by using its equation. This will suffice. so far, but it is necessary to reinforce the idea that R can be used to draw very professional graphs.



```r
x  <-  c(1, 2, 3, 4)
y  <-  c(10, 11, 13, 17)
plot(y ~ x)
curve(7.77 * exp(0.189 * x), add = T, col = "red")
```

<img src="_main_files/figure-html/unnamed-chunk-19-1.png" width="90%" />

---

## Further readings 


1. Maindonald J. Using R for Data Analysis and Graphics - Introduction, Examples and Commentary. (PDF, data sets and scripts are available at [JM's homepage](https://cran.r-project.org/doc/contrib/usingR.pdff).
2. Oscar Torres Reina, 2013. Introductio to RStudio (v. 1.3). [This homepage](https://dss.princeton.edu/training/RStudio101.pdf)

<!--chapter:end:17-Eng_IntroduzioneR.Rmd-->

