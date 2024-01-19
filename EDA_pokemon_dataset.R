#Case Study on Pokemon Dataset
#Loading the Pokemon Dataset
#read.csv() function lets the user to read the data from a CSV
pokemon_dataset = read.csv("pokemon.csv")
#printing the number of rows and columns in the dataframe
nrow(pokemon_dataset)
ncol(pokemon_dataset)

#tabulation of categorical columns
table(pokemon_dataset$is_legendary)
table(pokemon_dataset$type1)
table(pokemon_dataset$generation)

#min-max hp values of pokemon dataset
min(pokemon_dataset$hp)
max(pokemon_dataset$hp)

#min-max speed values of pokemon dataset
min(pokemon_dataset$speed)
max(pokemon_dataset$speed)

#finding out if there are any null values in the entire dataset
# to find the location of missing values inside the dataset we can use which() function that prints out
# the indices of null values
which(is.na(pokemon_dataset))

#to find out the count of missing values we can use sum() function along with is.na() function
sum(is.na(pokemon_dataset))

#Renaming the column names
colnames(pokemon_dataset)[colnames(pokemon_dataset) == 'type1'] = "primary_type"
colnames(pokemon_dataset)
colnames(pokemon_dataset)[colnames(pokemon_dataset) == 'type2'] = "secondary_type"
colnames(pokemon_dataset)
colnames(pokemon_dataset)[colnames(pokemon_dataset) == 'name'] = "pokemon_name"
colnames(pokemon_dataset)

#printing the number of unique types in the primary column
num_types = unique(pokemon_dataset$primary_type)
length(num_types)
print(num_types)

--------------------------------------------------------------------------------

#creating 'grass' data frame for the primary type 
#Using filter() function we can extract the grass primary type from pokemon_dataset and form a new dataframe
library(dplyr)
pokemon_dataset %>% filter(pokemon_dataset$primary_type == "grass") -> grass_pokemon_dataframe
head(grass_pokemon_dataframe)
#finding out if there are any null values in this new dataframe
sum(is.na(grass_pokemon_dataframe))
#printing the speed values of the grass pokemon
min(grass_pokemon_dataframe$speed)
max(grass_pokemon_dataframe$speed)

#printing the mean of special attack and special defence of the grass pokemon
mean(grass_pokemon_dataframe$sp_attack)
mean(grass_pokemon_dataframe$sp_defense)

#Data Visualization
library(ggplot2)
#printing the hps 
ggplot(data = grass_pokemon_dataframe, aes(x = hp)) + geom_histogram(fill = 'salmon', col = "black")
#printing the height of the grass pokemon
ggplot(data = grass_pokemon_dataframe, aes(x = height_m)) + geom_histogram(fill = 'palegreen4', col = 'black' )
#printing the weights of the grass type pokemon
ggplot(data = grass_pokemon_dataframe, aes(x = weight_kg)) + geom_histogram(fill = "khaki", col = "black")

#legendary vs not legendary grass type pokemon
ggplot(data = grass_pokemon_dataframe, aes(x = is_legendary)) + geom_bar(fill = "sienna", col = "black")

--------------------------------------------------------------------------------

#Creating 'fire' a different data frame for the primary type 
#Using filter() function we can extract the fire primary type from pokemon_dataset and form a new dataframe
pokemon_dataset %>% filter(pokemon_dataset$primary_type == "fire") -> fire_pokemon_dataframe
head(fire_pokemon_dataframe)

#let's now print the number of rows and columns of 'fire' data frame
nrow(fire_pokemon_dataframe)
ncol(fire_pokemon_dataframe)

#checking for null values in the dataset
#using which() function we can find out the indices of all the missing values inside the data frame
which(is.na(fire_pokemon_dataframe))

#printing the total number of missing values
sum(is.na(fire_pokemon_dataframe))

#After this we will check for the min and max hp rates for fire type pokemon
min(fire_pokemon_dataframe$hp)
max(fire_pokemon_dataframe$hp)

#Similarly we will print the min-max rates for special attack, special defense and speed types
min(fire_pokemon_dataframe$sp_attack)
max(fire_pokemon_dataframe$sp_attack)

min(fire_pokemon_dataframe$sp_defense)  
max(fire_pokemon_dataframe$sp_defense)


mean(fire_pokemon_dataframe$speed)  
min(fire_pokemon_dataframe$speed)
max(fire_pokemon_dataframe$speed)

#All the above data can be put visually in the form of plots/graphs
#library(ggplot2)
ggplot(data = fire_pokemon_dataframe, aes(y = speed)) + geom_boxplot()
ggplot(data = fire_pokemon_dataframe, aes(y = sp_attack)) + geom_boxplot()
ggplot(data = fire_pokemon_dataframe, aes(y = sp_defense)) + geom_boxplot()

#summary() function will print the summary statistics of numerical data
summary(fire_pokemon_dataframe)

#graphical summaries
#plotting a scatter plot between height and weight of fire pokemon
ggplot(data = fire_pokemon_dataframe, aes(x = height_m, y = weight_kg)) + geom_point(color = "orange")
#scatterplot between sp_attack and sp_defense
ggplot(data = fire_pokemon_dataframe, aes(x = sp_attack, y = sp_defense)) + geom_point(color = "steelblue")
ggplot(data = fire_pokemon_dataframe, aes(x = hp)) + geom_histogram(fill = 'plum4', col = "black")
ggplot(data = fire_pokemon_dataframe, aes(x = is_legendary)) + geom_bar(fill = "slateblue", col = "black")




















  
  
  
  
  
  
  
