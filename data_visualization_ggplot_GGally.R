library(datasets)
#load data
data("mtcars")
#view first 5 rows
head(mtcars,5)

#to get information about the variables(?mtcars)

#load ggplot package
library(ggplot2)

#create a scatterplot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()

#Add a title
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs Miles per gallon")+labs(x="Displacement",y="Miles per Gallon")

# create a boxplot of the the distribution of mpg for the individual Engine types vs Engine (0 = V-shaped, 1 = straight)

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)

#create boxplot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

#Add color to the boxplots to help differentiate
ggplot(aes(x = vs, y = mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha = 0.3) +
  theme(legend.position = "none")

#create the histogram of weight wt.
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)

#Question 2(plotting in R with ggplot and GGally. GGally is an extension of ggplot2.)
#install dependencies for GGally package
install.packages("https://cran.r-project.org/src/contrib/Archive/patchwork/patchwork_1.1.0.tar.gz", repos = NULL, type = "source", dependencies = TRUE)

install.packages("https://cran.r-project.org/src/contrib/Archive/broom.helpers/broom.helpers_1.4.0.tar.gz", repos = NULL, type = "source", dependencies = TRUE)

install.packages("https://cran.r-project.org/src/contrib/Archive/ggstats/ggstats_0.5.0.tar.gz", repos = NULL, type = "source", dependencies = TRUE)

library(datasets)
data(iris)
head(iris)
library(GGally)
ggpairs(iris,mapping=ggplot2::aes(colour = Species))
