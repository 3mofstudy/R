x<- as.matrix(mtcars)
rc<-rainbow(nrow(x),start=0,end=.3)
cc<-rainbow(ncol(x),start=0,end=.3)
hv = heatmap(x, col=cm.colors(256),scale = "column",
             RowSideColors = rc,
             ColSideColors = cc,
             margins = c(5,10),
             xlab = "specification variables",
             ylab = "Car Models",
             main = "heatmapl")
utils::str(hv)

mtcars
