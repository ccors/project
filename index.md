---
title       : Guess the number
subtitle    : Slidify
author      : Davide Fiorentino
job         : Data Science Specialization
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

Guess the number is a simple demonstration of the usage of shiny and can be found
at https://github.com/ccors/project

The application draw, randomly, a number between 1 and 100 and you must guess it.
Type a number and submit it.

If it's correct you'll get the "Right!" message in the main panel. Otherwise you can keep guessing.
At the beginning and if a number outside the range is submitted the message
```
Guess a number between 1 and 100.
```
is shown.

--- #description

## Guess function

This is the function checking your guess:
```
guessed <- function(guess, number) {
        if (guess < 1 || guess > 100) {
                returnValue 
        }
        else if (guess > number) {
                returnValue <- 'Too high.'
        }
        else if (guess < number) {
                returnValue <- 'Too low.'
        }
        else if (guess == number) {
                returnValue <- 'Right!'
        }
        returnValue
}
```

---  plot #plot

## Executing R code ##

Shiny lets execute R code as seen with knit


```r
require(ggplot2)
qplot(wt, mpg, data = mtcars)
```

<img src="assets/fig/plot-1.png" title="plot of chunk plot" alt="plot of chunk plot" style="display: block; margin: auto;" />

--- #slide5

## Thanks for watching


