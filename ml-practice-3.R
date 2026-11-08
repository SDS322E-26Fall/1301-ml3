library(tidyverse)
library(tidymodels)
library(ranger)

##################################################################
# Load the dataset your group picked in ML in practice I

# Dataset 1: Hotel bookings
# https://github.com/rfordatascience/tidytuesday/blob/main/data/2020/2020-02-11/readme.md
tuesdata <- tidytuesdayR::tt_load("2020-02-11")
hotels <- tuesdata$hotels

# Dataset 2: Coffee ratings
# https://github.com/rfordatascience/tidytuesday/blob/main/data/2020/2020-07-07/readme.md
tuesdata <- tidytuesdayR::tt_load("2020-07-07")
coffee <- tuesdata$coffee_ratings

# Dataset 3: Spotify songs
# https://github.com/rfordatascience/tidytuesday/blob/main/data/2020/2020-01-21/readme.md
tuesdata <- tidytuesdayR::tt_load("2020-01-21")
spotify <- tuesdata$spotify_songs

# Dataset 4: Himalayan expeditions
# https://github.com/rfordatascience/tidytuesday/blob/main/data/2025/2025-01-21/readme.md
tuesdata <- tidytuesdayR::tt_load("2025-01-21")
exped <- tuesdata$exped_tidy
peaks <- tuesdata$peaks_tidy


##################################################################
# Your turn: a tuned random forest for your group's question

# Prepare the data: select the response and the predictors (no leakage variables!),
# make a binary response a factor, and subsample if the data is large


# Step 0: training-testing split


# Step 1: specify the model, with mtry and min_n left to tune
# rand_forest(mode = "classification" or "regression", trees = 500, mtry = tune(), min_n = tune())


# Step 2: specify the pre-processing recipe
# no step_dummy() or step_normalize() needed; step_naomit()? step_other()? step_zv()?


# Step 3: build a workflow


# Step 4a: create the cross-validation folds from the training data


# Step 4b: set up the hyperparameter grid: mtry from 1 to the number of predictors


# Step 4c: fit the model for every combination on every fold (set.seed() first)
# this can take a long time: time one fit first, start with a small grid and few folds,
# and save the results with saveRDS()


# Step 4d: average the metrics over the folds and plot them


# Step 4e: find the best mtry and min_n


# Step 4f: plug in the best values and refit on the whole training data


# Step 5/6: predict and calculate the metrics on the testing data, once

