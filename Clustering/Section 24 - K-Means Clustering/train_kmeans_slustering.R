# Importing the dataset
dataset <- read.csv('Mall_Customers.csv')
x <- dataset[4:5]
# Using the elbow method to find the optimal number of clusters
set.seed(6)
wcss <- vector()
for (i in 1:10) wcss[i] <- sum(kmeans(x, i)$withinss)
plot(1:10,
     wcss, 
     type = 'b',
     main = paste('Cluster of clients'),
     xlab = 'Number of clusters',
     ylab = 'WCSS')

#Apply k-means to the mall dataset
set.seed(29)
kmeans <- kmeans(x, 5, iter.max = 300, nstart = 10)

#Visualisation of clusters
library(cluster)
clusplot(x,
         kmeans$cluster,
         lines = 0,
         shade = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of clients'),
         xlab = 'Annual Income',
         ylab = 'Speding Score')

