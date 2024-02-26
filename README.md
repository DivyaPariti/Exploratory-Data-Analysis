# Pokémon Dataset Analysis 🐾
This is a solo project done on pokemon dataset in R using R Studio.

## Overview
This project focuses on analyzing the Pokémon dataset using R programming language. It involves various data manipulation tasks, statistical analysis, and data visualization techniques.

![pokeball](https://github.com/DivyaPariti/Exploratory-Data-Analysis/assets/65856784/1856b260-64f8-4495-b5d5-c8a4bfedab00)

Pokemon dataset consists of more than 800 pokemon's data from all the 7 generations. The information contained in the dataset includes Base Stats, Performance against other types, Height, Weight, Classification, and many more. 

👉 The dataset can be downloaded from Kaggle and you can get it [here](https://www.kaggle.com/datasets/rounakbanik/pokemon)🔗

We perform 
  1. Data Analysis📈
  2. Data Manipulation🤹‍♂️
     and
  3. Data Visualization📊

## Requirements for the project
Before we start with the project you need to dowloand the [R](https://cran.r-project.org/bin/windows/base/) and [R Studio](https://posit.co/download/rstudio-desktop/). 
After you download the dataset from Kaggle; clone or download this repository to perfrom Exploratory Data Analysis on Pokemon Dataset.

## Description 
## Loading the Dataset 📊
- Loaded the Pokémon dataset using the `read.csv()` function.
- Determined the size of the dataset: 800 rows and 41 columns.
- Tabulated categorical columns to understand distribution.

## Data Manipulation 🛠️
- Renamed columns for better clarity.
- Extracted data for specific Pokémon types such as 'grass' and 'fire' to create separate data frames.
- Checked for missing values and removed them from the analysis.

## Statistical Analysis 📈
### For Grass Pokémon
- Calculated min-max values for HP and speed.
- Computed mean for special attack and special defense.
- Visualized HP distribution, height, weight, and legendary status.

### For Fire Pokémon
- Analyzed descriptive statistics for HP, special attack, special defense, and speed.
- Created boxplots and scatter plots to visualize relationships between different attributes.

## Data Visualization 📊
- Utilized ggplot2 library to create histograms, boxplots, and bar graphs.
- Demonstrated the distribution of attributes like HP, speed, special attack, and special defense.
- Showed comparison between legendary and non-legendary Pokémon.

## Conclusion 🏁
This analysis provides insights into the characteristics of grass and fire Pokémon. It showcases their stats, distributions, and differences between legendary and non-legendary Pokémon.
