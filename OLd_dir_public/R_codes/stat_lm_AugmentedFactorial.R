rm(list = ls())
library(emmeans)
library(multcomp)
fileName <- "https://www.casaonofri.it/_datasets/adjuvants.csv"
dataset <- read.csv(fileName)
head(dataset)
dataset$DoseF <- with(dataset, factor(ifelse(Dose==60 | Dose == 1, "HIGH",
                               ifelse(Dose == 0, "NONE", 
                                      "LOW"))))
dataset[,c(1:3,5)] <- lapply(dataset[,c(1:3,5)], function(i) factor(i))

# Naive analysis
Comb <- with(dataset, factor(Herbicide:Adjuvant:DoseF))
model1 <- lm(Yield ~ Comb, data = dataset)
anova(model1)

# Parting the factorial structure
dataset$CvT <- with(dataset, factor(ifelse(Herbicide == "HandWeeded", "chk1",
                      ifelse(Herbicide == "Unweeded", "chk2","trt"))))

# Coding a nested model
model2 <- lm(Yield ~ CvT/(Herbicide*DoseF*Adjuvant), data = dataset)
anova(model2)
cld(emmeans(model2, ~CvT), Letters = LETTERS)
cld(emmeans(model2, ~CvT:Herbicide:Adjuvant), Letters = LETTERS)
