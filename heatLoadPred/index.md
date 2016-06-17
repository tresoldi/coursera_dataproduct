---
title       : AC Heat Load Prediction
subtitle    : Applying a Rule-of-Thumb
author      : Tiago Tresoldi
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## What

- An extremely simple, and hardly useful, R-Shiny web application that demonstrates how we can easily create public and interactive applications using R that don't require any software installation by the user.

- The application uses a rule-of-thumb commonly used in Southern Brazil to predict, based exclusively in the area of a room, the heat load for air conditioning in domestic environments.

---

## How

The model is extremely simple, assuming a linear relation between room area and heat load, with a reference value of 1 TR (12,000 BTUs) per 20 square meters room. The results are acceptable for dometic rooms in Brazil; 20% is sometimes added to the model output (large windows, high mean number of people, etc.).

The model is reproduced in the code below, with the output for 20 and 30 m2:


```r
heatloadPred <- function(area) { (area / 20) * 12000 }
heatloadPred(20.0)
```

```
## [1] 12000
```

```r
heatloadPred(30.0)
```

```
## [1] 18000
```

---

## Tools

- The base of the application is an R code, run with the *shiny* library and hosted on *shinyapps.io* at the url https://tresoldi.shinyapps.io/dataproduct/

- This presentation is written in R Markdown and compiled with the *slidify* library.

- The source for both the application and the presentation is hosted on GitHub, at https://github.com/tresoldi/coursera_dataproduct

---

## Future work

- Better documentation and interface, make the user interface less ugly

- Extend the web application, for example allowing the user to specify a higher than standard load with a check box, which would add 20% to the model result
