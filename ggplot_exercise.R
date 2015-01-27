install.packages("ggplot2", dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")
library("ggplot2")
library("plyr")
library("ggthemes")
library("reshape2")
head(iris)
myplot <- ggplot(data = iris, aes(X = Sepal.Length, y = Sepal.Width))
summary(myplot)
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point(aes(shape = Species), size = 2)
#subset randomly 100 
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
head(d2)
ggplot(data = d2, aes(x = carat, y = price, color = color)) +geom_point()
library(MASS)
library("ggplot2")
ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
myplot <- ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
summary(myplot)

#
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +geom_point() + facet_wrap(Species ~)

#color brewer palette
library("reshape2")
df <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value))

#
head(d2)
ggplot(d2, aes(clarity, fill = cut)) +geom_bar(position = "dodge")

#
ggplot(faithful, aes(waiting)) + geom_density(fill = "blue")

ggplot(faithful, aes(waiting)) + geom_density(fill = "blue")


ggplot(iris, aes(Sepal.Length, Sepal.Width, color = "Species")) +geom_point(aes(shape = Species), size = 3) +geom_smooth(method = "In")
