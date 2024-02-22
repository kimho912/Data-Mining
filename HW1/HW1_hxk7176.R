#Hyun Ho Kim 1001967176

# Loading the data
library(datasets)
data(mtcars)

# Check the data
head(mtcars)

# Five Point Summary
summary(mtcars$gear)

# 1. Box plot 
boxplot(mtcars$wt, col="red") # with wt and red color

# Three graphs in one window
par(mfrow=c(1,3))

# 2. Histogram 
hist(mtcars$wt, col = "red", breaks = 15) # with 15 breaks and red color
hist(mtcars$wt, col = "red", breaks = 39) # with 39 breaks and red color

# One graph in one window
par(mfrow=c(1,1))

# 3. Bar plotting 
barplot(table(mtcars$gear), col="blue") # with gear and blue color

# 4. 2D Box plot 
boxplot(mpg~carb, data=mtcars, col = "yellow") # mpg with carb and yellow color

# 5. Scatter plot
with(mtcars, plot(mpg, drat)) # mpg with drat
points(mtcars$mpg, mtcars$drat, col="orange", pch=16) # change the circles to orange filled circles
