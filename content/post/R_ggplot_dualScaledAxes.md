---
title: "Plotting weather data with ggplot()"
author: "Andrea Onofri"
date: 2024-06-06
slug: 'ggplot'
categories:
  - R
  - 'ggplot'
tags:
  - R
  - 'ggplot'
  - 'plot'
  - 'climate_data'
  - 'ggh4x'
archives:
  - 2024
---



Very often, we agronomists have to deal with weather data, e.g., to evaluate and explain the behaviour of genotypes in different environments. We are very much used to representing temperature and rainfall data in one single graph with two y-axis, which gives a good immediate insight on the weather pattern at a certain location. Unfortunately, I had to discover that doing such graphs with `ggplot()` is not a straightforward task.

Indeed, while searching for possible solutions, I came to discover that graphs with dual-scaled axes are not regarded as a good tool for visualisation; Hadley Wikham, the author of 'ggplot2' and several other important R packages, gave some good reasons (e.g., at this link: [https://stackoverflow.com/questions/3099219/ggplot-with-2-y-axes-on-each-side-and-different-scales](https://stackoverflow.com/questions/3099219/ggplot-with-2-y-axes-on-each-side-and-different-scales)); I do not intend to question those general reasons, but, nonetheless, the idea that I am not able to do with `ggplot()` what I could do with Excel gets on my nerves. After all, those graphs may be rather useful in some specific circumstances, such as with weather data.

Therefore, I started my search for a reasonable solution and I finally found my way, which I would like to share in this post. Let's consider the dataset 'DailyMeteoData.csv' reporting the daily average temperature and rainfall level in two years, in a location of my region (Umbria, central Italy). Let's open the dataset and use 'dplyr' to make a few useful transformations, such as:

1. transforming the date character into a date object;
2. adding fields for Year, Month and the Day Of the Year (DOY);



``` r
library(dplyr)
fileName <- "https://www.casaonofri.it/_datasets/DailyMeteoData.csv"
dataMeteo <- read.csv(fileName) |>
  mutate(Date = as.Date(Date, format = "%d/%m/%Y"),
         Year = as.numeric(format(Date, format="%Y")),
         Month = as.numeric(format(Date, format="%m")),
         DOY = as.numeric(format(Date, format="%j")))
head(dataMeteo)
##         Date Tavg Rain Year Month DOY
## 1 2011-01-01  5.9  0.0 2011     1   1
## 2 2011-01-02  6.2  0.6 2011     1   2
## 3 2011-01-03  4.5  0.0 2011     1   3
## 4 2011-01-04 -0.3  0.0 2011     1   4
## 5 2011-01-05  2.3  0.2 2011     1   5
## 6 2011-01-06  6.9  0.0 2011     1   6
```

Temperature is a continuous variable and it is easily represented by using a line graph, while rainfall consists of discrete events, which needs to be accumulated, e.g., over months or decades. Thus, we use 'dplyr' once more to get a new rainfall dataset, with the accumulated monthly rainfall, that is more useful to our purposes; for the sake of simplicity, we assume that the year is divided into 12 months of the same length (i.e. 30.4 days, roughly) and we create the DOY for the central day of each month, to be used as the center for the respective plot bar. 


``` r
dataMeteo2 <- dataMeteo |>
  group_by(Year, Month) |>
  summarise(Rain = sum(Rain)) |>
  mutate(DOY = seq(15, 365, by = 365/12))
head(dataMeteo2)
## # A tibble: 6 × 4
## # Groups:   Year [1]
##    Year Month  Rain   DOY
##   <dbl> <dbl> <dbl> <dbl>
## 1  2011     1  40.4  15  
## 2  2011     2  32.8  45.4
## 3  2011     3 113.   75.8
## 4  2011     4  16.6 106. 
## 5  2011     5  27.4 137. 
## 6  2011     6  61.2 167.
```

Now we produce our first graph with both rainfall and temperature level; in the box below I have played a little bit with the x-axes ticks and labels and I have left the y-axis label empty, for the moment.


``` r
library(ggplot2)
ggplot() +
  geom_bar(dataMeteo2, mapping = aes(x = DOY, y = Rain), fill = "grey",
           stat = "identity", width = 28) +
  geom_line(dataMeteo, mapping = aes(x = DOY, y = Tavg), col = "blue") +
  scale_x_continuous(breaks = c(365/12, 365/12*4, 365/12*8, 365) - 15, 
                     labels = c("Jan", "Apr", "Aug", "Dec"),
                     name = "") +
  scale_y_continuous(name = "") +
  facet_wrap(~Year) +
  theme_bw()
```

<img src="/post/R_ggplot_dualScaledAxes_files/figure-html/unnamed-chunk-3-1.png" width="672" />

This graph does not work: the temperature line is hardly visible, as its measurement unit is rather small compared to the rainfall unit; therefore, we need some sort of 'scaling' for the temperature variable, so that it ranges approximately between 150 and 250, in such a way that the blue line is clearly visible and does not get in the way of the rainfall bars. The minimum and maximum temperature values are equal, respectively, to -4.2°C and 28.9°C; we would like to match these original values with the new transformed values of 150 and 250, as shown in the Figure below.

<img src="/post/R_ggplot_dualScaledAxes_files/figure-html/unnamed-chunk-4-1.png" width="672" />

The previous figure tells us that we could transform the original temperature scale by using the equation of the straight line passing through the two points (-4.2, 150) and (28.9, 250). Thanks to some reminiscences from geometry courses, we can calculate the slope of such a straight line as:

`$$m = \frac{250 - 150}{28.9 + 4.2} = 3.02$$`

while the intercept is:

`$$q = 250 - 3.02 \times 28.9 = 162.69$$`

Thus, the scaling equation is:

`$$Y_N = 162.69 + 3.02 \,\, Y_O$$`

where `\(Y_N\)` is the new temperature scale, while `\(Y_O\)` is the original one. The reverse transformation is:

`$$Y_O = \frac{Y_N - 162.69}{3.02}$$`

Now, we are ready to plot the graph. We transform the temperature to its new unit and plot it:


``` r
dataMeteo <- dataMeteo %>% 
  mutate(newTavg = 162.69 + 3.02 * Tavg)

ggplot() +
  geom_bar(dataMeteo2, mapping = aes(x = DOY, y = Rain), fill = "grey",
           stat = "identity", width = 28) +
  geom_line(dataMeteo, mapping = aes(x = DOY, y = newTavg), col = "blue") +
  scale_x_continuous(breaks = c(365/12, 365/12*4, 365/12*8, 365) - 15, 
                     labels = c("Jan", "Apr", "Aug", "Dec"),
                     name = "") +
  scale_y_continuous(name = "") +
  facet_wrap(~Year) +
  theme_bw()
```

<img src="/post/R_ggplot_dualScaledAxes_files/figure-html/unnamed-chunk-5-1.png" width="672" />

Now, we include the second axis, by using the `sec.axis` argument and the `sec_axis()` function, wherein we specify the back-transforming function the original scale:


``` r
dataMeteo <- dataMeteo %>% 
  mutate(newTavg = 162.69 + 3.02 * Tavg)

ggplot() +
  geom_bar(dataMeteo2, mapping = aes(x = DOY, y = Rain), fill = "grey",
           stat = "identity", width = 28) +
  geom_line(dataMeteo, mapping = aes(x = DOY, y = newTavg), col = "blue") +
  scale_x_continuous(breaks = c(365/12, 365/12*4, 365/12*8, 365) - 15, 
                     labels = c("Jan", "Apr", "Aug", "Dec"),
                     name = "") +
  scale_y_continuous(name = "Rain (mm)", 
                     sec.axis = sec_axis(~ (. - 162.69)/3.02, 
                                         name = "Daily Temperature (°C)",
                                         breaks = c(-10, 0, 10, 20, 30))) +
  facet_wrap(~Year) +
  theme_bw()
```

<img src="/post/R_ggplot_dualScaledAxes_files/figure-html/unnamed-chunk-6-1.png" width="672" />

And we are done! I am sure you have comments to improve this: please, drop me a not at the address below.

Thanks for reading and happy coding!

Andrea Onofri   
Department of Agricultural, Food and Environmental Sciences        
University of Perugia (Italy)        
[andrea.onofri@unipg.it](mailto:andrea.onofri@unipg.it)  

<a href="https://twitter.com/onofriandreapg?ref_src=twsrc%5Etfw" class="twitter-follow-button" data-show-count="false">Follow @onofriandreapg</a><script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

---

# UPDATE (6/6/2024)

Ross Gilmoure from Galileo Consulting (Kuala Lumpur) sent me an interesting comment, proposing the use of the 'lubridate' package for the management of dates and of the 'ggh4x' package, to exploit the nested axis capabilities of this latter. Basically, his graph does not have facets, but the two years are put one after the other. Furthermore, he calculated the montly means for temperature and fitted a cubic spline using 'geom_smooth()' and 'method="gam"'; he also made use of minor ticks, which might be a good idea. Ross'code is following: I'd like to thank him very much!


``` r
library(lubridate)
library(ggh4x)
dataMeteo1 <- dataMeteo |>
  mutate(
    Date = as.Date(Date, format = "%d/%m/%Y"),
    Year = lubridate::year(Date),
    Month = lubridate::month(Date))

dataMeteo2 <- dataMeteo1 |>
  group_by(Year, Month) |>
  summarise(
    Rain = sum(Rain),
    Temp = mean(Tavg, rm.na = TRUE)) |>
  mutate(Mth = factor(month.abb[Month], 
                      levels = c("Jan", "Feb", "Mar", "Apr",
                                 "May", "Jun", "Jul", "Aug",
                                 "Sep", "Oct", "Nov", "Dec")))
dataMeteo3 <- dataMeteo2 |>
  mutate(newTemp = 162.69 + 3.02 * Temp)

ggplot(dataMeteo3, mapping = aes(x = interaction(Mth, Year),
                                 group = 1)) +
  geom_col(aes(y = Rain), fill = "grey") +
  geom_point(aes(y = newTemp), size = 2, col = "blue") +
  geom_smooth(
    method = "gam", formula = y ~ s(x, bs = "cc"),
    aes(x = as.numeric(interaction(Mth, Year)), y = newTemp),
    col = "blue") +
  geom_point(aes(y = newTemp), size = 3, col = "blue", 
             fill = "white", shape = 21, stroke = 1) +
  scale_y_continuous(
    minor_breaks = scales::breaks_width(20),
    name = "Mean Monthly Total Rainfall (mm)",
    sec.axis = sec_axis(~ (. - 162.69) / 3.02,
      name = "Mean Monthly Daily Temperature (°C)",
      breaks = c(-10, 0, 10, 20, 30))) +
  guides(x = "axis_nested",
        y = guide_axis(minor.ticks=TRUE),
        y.sec = guide_axis(minor.ticks=TRUE)) +
  theme_bw(base_size = 18) +
  theme(
     panel.grid.minor = element_blank(),
     axis.title.x = element_blank(),
     axis.text.x = element_text(face = "bold", size = rel(0.5)),
     axis.ticks = element_line(colour = "red"),
     ggh4x.axis.nestline.x = element_line(linewidth = 0.6),
     ggh4x.axis.nesttext.x = element_text(colour = "blue", 
                                          face = "bold", 
                                          size = rel(1.2))
  )
```

<img src="/post/R_ggplot_dualScaledAxes_files/figure-html/unnamed-chunk-7-1.png" width="672" />



