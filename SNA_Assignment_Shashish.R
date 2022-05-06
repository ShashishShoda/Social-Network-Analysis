# Social Network Analysis 

# M2021ANLT032	Shashish Shoda


# Analysis of connection network between "Class of TISS-SNA-2022" 
# before and after group formation.

# Note: Students will have connection if they belong to same 
# department or same assignment group, this is how we have 
# defined connection.

#loading igraph library
library(igraph)
#Case 1 : Before the assignment group formation.
#loading the adjacency matrix csv.
#this file contains the connection between the students of same department.
class_before_csv=read.csv(file="C:/Users/shash/Documents/Tiss Analytics Subjects/Sem 2/Social Network Analysis and Organisation/Excel files/ClassSNA2022_before.csv",header=TRUE,row.names = 1)
#for viewing the csv file in R
View(class_before_csv)
#converting the csv to matrix data type so that it can be converted to graph.
class_before_matrix=as.matrix(class_before_csv)
#converting matrix into graph
class_before_graph=graph.adjacency(class_before_matrix,mode="undirected",diag=FALSE)
#plotting the graph
plot(class_before_graph,edge.arrow.size=5,vertex.color="green",vertex.size=15,vertex.frame.color="red",vertex.lable.color="black",vertex.lable.cex=0.8,vertex.lable.dist=2,edge.curved=0)
#degree 
degree(class_before_graph,v=V(class_before_graph),mode=c("all","out","in","total"),loops=FALSE,normalized = FALSE)
x=seq(0:12)
y=degree.distribution(class_before_graph)
#plotting the degree distribution
plot(x,y)
#histogram 
hist(degree(class_before_graph))
#edge density
edge_density(class_before_graph)
#fastest greedy 
k=fastgreedy.community(class_before_graph)
plot(k,class_before_graph)
#Case 2 : After the assignment group formation.
#loading the adjacency matrix csv.
#this file contains the connection between the students of same department
#as well as connection between students of the same assignment group.
class_after_csv=read.csv(file="C:/Users/shash/Documents/Tiss Analytics Subjects/Sem 2/Social Network Analysis and Organisation/Excel files/ClassSNA2022_after.csv",header=TRUE,row.names = 1)
#for viewing the csv file in R
View(class_after_csv)
#converting the csv to matrix data type so that it can be converted to graph.
class_after_matrix=as.matrix(class_after_csv)
#converting matrix into graph
class_after_graph=graph.adjacency(class_after_matrix,mode="undirected",diag=FALSE)
#plotting the graph
plot(class_after_graph,edge.arrow.size=5,vertex.color="green",vertex.size=15,vertex.frame.color="red",vertex.lable.color="black",vertex.lable.cex=0.8,vertex.lable.dist=2,edge.curved=0)
#degree 
degree(class_after_graph,v=V(class_after_graph),mode=c("all","out","in","total"),loops=FALSE,normalized = FALSE)
x1=seq(0:16)
y1=degree.distribution(class_after_graph)
#plotting the degree distribution
plot(x1,y1)
#histogram 
hist(degree(class_after_graph))
#edge density
edge_density(class_after_graph)
#fastest greedy 
a=fastgreedy.community(class_after_graph)
plot(a,class_after_graph)

