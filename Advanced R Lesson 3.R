# Data
set.seed(123)
data <- data.frame(
  X1 = rnorm(50, mean = 10, sd = 2),
  X2 = rnorm(50, mean = 20, sd = 5)
)
head(data)

# Visualize teh data 
plot(data$X1, data$X2, pch = 16, col = "blue", main = "data")


# Choose the number of clusters 
k <- 2 # number of clusters

# Apply the k-means clustering
kmeans_result <- kmeans(data, centers = k)
# Display the results

print(kmeans_result)

# visualize the clusters
plot(data$X1, data$X2, pch = 16, col = kmeans_result$cluster, main = "K-means clustering")
points(kmeans_result$centers, col = 1:k, pch = 8, cex= 2)

# Evaluating k Means clustering
# have the cluster package
install.packages('cluster')
library(cluster)

silhouette_score <- silhouette(kmeans_result$cluster, dist(data))
print(silhouette_score)

# Within clusters sum of squares
wss <- sum(kmeans_result$withinss)
print(wss)


# -----------------------------------------------------------------------------
#    HIERARCHICAL CLUSTERING

#-------------------------------------------------------------------------------

head(data)

# compute the distance matrix
dist_matr <- dist(data)
dist_matr

# Apply the hierarchical clustering
hc_result <- hclust(dist_matr, method = "ward.D2")

# Visualize the dendrogram
plot(hc_result, main = "Hierachical Clustering Dendrogram", xlab = "  ", sub = " ")

# cut the dendrogram to obtain the clusters
k <- 4
clusters <- cutree(hc_result, k)

# visualize the clusters
plot(data$X1, data$X2, pch = 16, col = clusters, main = "Hierarchical Clustering")

# Evaluation metrics
# cophenetic Correlation coefficient
coph_corr <- cophenetic(hc_result)
print(cor(coph_corr, dist_matr))

