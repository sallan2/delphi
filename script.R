library("maps")
library("qgraph")

map("world", fill=TRUE, col="white", bg="lightblue", ylim=c(-60, 90), mar=c(0,0,0,0))

# Some network with 4 nodes:
Adj <- matrix(1,4,4)

# Layout using coordinates:
Layout <- matrix(c(4.9036, 52.3680, 103.8198, 1.3521, -74.0060, 40.7128, -58.3816, -34.6037),,2,byrow=TRUE)

# Plot network:
map("world", fill=TRUE, col="white", bg="lightblue", ylim=c(-60, 90), mar=c(0,0,0,0))
qgraph(Adj, labels = FALSE, layout = Layout, color = "black", edge.color = "black",
       plot = FALSE, rescale = FALSE, usePCH = TRUE, vsize = 5)