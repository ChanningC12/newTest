# http://scikit-learn.org/stable/modules/clustering.html
# http://www.sthda.com/english/articles/30-advanced-clustering/105-dbscan-density-based-clustering-essentials/

# DBSCAN: Density-Based Clustering
# K-means, PAM and hierarchical clustering work well only for compact and well separated clusters

# install.packages("factoextra")
library(factoextra)
data("multishapes")
df <- multishapes[,1:2]
set.seed(123)
km.res <- kmeans(df,5,nstart=25)
fviz_cluster(km.res,df,geom="point",
             ellipse=F,show.clust.cent=F,
             palette="jco",ggtheme=theme_classic())

# DBSCAN, 2 parameters, epsilon and minimum points
# epsilon: radius of neighborhood around a point x
# minimum points: minimum number of neighbors within eps radius

# install.packages("fpc")
# install.packages("dbscan")

library(fpc)
set.seed(123)
db <- dbscan(df,eps=0.15,MinPts=5)
fviz_cluster(db,data=df,stand=F,
             ellipse=F,show.clust.cent=F,
             geom="point",palette="jco",ggtheme=theme_classic())
db
table(db$cluster)

# Determining the optimal eps value, "knee"
library(dbscan)
kNNdistplot(df,k=5)
abline(h=0.15,lty=2)

# function predict.dbscan() can be used to predict the clusters for the points in new data
predict.dbscan(db,df,df[sample(1:nrow(df), 50,replace=FALSE),])






