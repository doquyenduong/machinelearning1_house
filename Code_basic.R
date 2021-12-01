# Code to reproduce

# Load packages
library(dplyr)
library(ggplot2)
library(tidyverse)
library(scales)                      # formating numbers on axis ggplot
library(gridExtra)
library(tidyr)
library(readr)
library(knitr)
library(lubridate)                   # to format date
library(egg)                         # plot layout 
library(PerformanceAnalytics)        # correlation matrix
library(GGally)                      # correlation matrix
library(corrplot)                    # correlation matrix
library(Hmisc)                       # correlation matrix
library(psych)                       # summary statistics
library(caret)                       # split data train-test
library(broom)                       # visualize fitted linear with categorical variable
library(MASS)
library(conflicted)                  # set conflict

# Load data
d_house <- read.csv("dataset/AmesHousing.csv") %>% 
  as_tibble()

# Check the variables
glimpse(d_house)

# Exclude the irrelevant variables
d_house <- d_house %>% 
  select(-c(Order, PID))

# Exclude the columns with 49% missing value
d_house <- d_house %>% 
  select(-c(Alley, Fireplace.Qu, Pool.QC, Fence, Misc.Feature))

## Visualizations of categorical variables

### MS.Zoning
boxplot(SalePrice ~ MS.Zoning, data = d_house)

### Lot Shape

### Neighborhood

### Bldg.Type

### House.Style

### Foundation

### Functional

### Sale conditions
